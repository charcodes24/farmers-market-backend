class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url

  belongs_to :vendor
end
