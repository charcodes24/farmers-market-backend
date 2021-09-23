class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_id

  has_many :items
end
