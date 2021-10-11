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

  def update
    item = Item.find_by(id: params[:id])
    item.update!(item_params)
    render json: item, status: 200
  end

  private 

  def item_params
    params.require(:item).permit(:name, :image_url, :price, :vendor_id, :id, :item)
  end
end
