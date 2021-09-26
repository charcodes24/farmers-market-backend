class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :subtotal, :date_placed

  has_many :items

  def date_placed
    object.created_at.strftime("%b %d, %Y")
  end
end
