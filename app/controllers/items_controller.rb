class ItemsController < ApplicationController

    # GET /items
  def index
    items = Item.where(vendor_id: params[:vendor_id].to_i)
    # byebug
    render json: items, include: :vendor
  end
end
