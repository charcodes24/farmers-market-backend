class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :vendor_id

  belongs_to :vendor
end
