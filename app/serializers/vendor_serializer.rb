class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :is_vendor

  has_many :items
end
