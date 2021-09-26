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
    # byebug
    item = Item.find_by(id: params[:id])
    item.update(item_params)
    render json: item, status: 200
  end

  # def destroy
  #   item = Item.find_by(id: params[:id])
  #   byebug
  #   item.destroy
  # end

  private 

  def item_params
    params.permit(:name, :image_url, :price, :vendor_id, :id, :item)
  end
end
