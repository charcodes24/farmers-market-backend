class OrdersController < ApplicationController

    def create 
        order = Order.create!(order_params)
        if order 
            customer = Customer.find(params[:customer_id])
            items = order.order_items.map { |x| Item.find(x.item_id) }
            CustomerMailer.with(customer: customer, items: items).order_notification.deliver_now

            filteredItems = items.uniq

            vendors = filteredItems.map { |x| Vendor.find(x.vendor_id) }
            vendors.uniq.map { |vendor| VendorMailer.with(vendor: vendor, 
            items: items, customer: customer, order: order).order_notification.deliver_now }
        
            render json: order, status: :created
        end
    end

    def show 
        orders = Order.all.where(customer_id: params[:id])
        render json: orders, status: :created
    end

    private 

    def order_params
        params.permit(:subtotal, :customer_id, item_ids: [])
    end
end
