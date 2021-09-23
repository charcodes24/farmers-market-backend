class ItemsController < ApplicationController

    # GET /items
  def index
    items = Item.where(vendor_id: params[:vendor_id].to_i)
    # byebug
    render json: items, include: :vendor
  end

  def create
    item = Item.create!(item_params)
    render json: item
  end

  private 

  def item_params
    params.permit(:name, :image_url, :price, :vendor_id)
  end
end
