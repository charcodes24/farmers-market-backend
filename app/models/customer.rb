class Customer < ApplicationRecord
    has_many :orders
    has_many :items, through: :order_items
end
