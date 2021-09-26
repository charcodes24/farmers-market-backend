class OrdersController < ApplicationController
    
    def create
        # byebug
        order = Order.create!(order_params)
        render json: order, status: :created
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
