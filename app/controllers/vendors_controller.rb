class VendorsController < ApplicationController
    skip_before_action :authorize, only: :create

    def index
        vendors = Vendor.all
        render json: vendors
    end

    def create
        vendor = Vendor.create!(vendor_params)
        session[:vendor_id] = vendor.id
        if vendor
            VendorMailer.with(vendor: vendor).welcome_vendor.deliver_now

            render json: vendor, status: :created
        end
    end

    # vendors = order.order_items.map { |x| Vendor.find(x.item_id).name}

    # items = order.order_items.map { |x| Item.find(:item_id) }

    # unique = items.uniq

    def show 
        vendor = Vendor.find_by(id: params[:id])
        render json: vendor, status: :ok
    end

  private 

  def vendor_params
      params.require(:vendor).permit(:name, :description, :email, :username, :password, :password_confirmation, :is_vendor)
    end
    
end
