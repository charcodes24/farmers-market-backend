class Item < ApplicationRecord
  belongs_to :vendor
  has_many :order_items
  has_many :orders, through: :order_items

  validates :name, presence: true
  validates :image_url, presence: true 
  validates :price, presence: true 
end
