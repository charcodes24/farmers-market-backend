class VendorsController < ApplicationController
    skip_before_action :authorize

    def index
        vendors = Vendor.all
        render json: vendors
    end

    def create
    vendor = Vendor.create!(vendor_params)
    session[:vendor_id] = vendor.id
    render json: vendor, status: :created
  end

  private 

  def vendor_params
      params.require(:vendor).permit(:name, :description, :username, :password, :password_confirmation, :is_vendor)
    end
    
end
