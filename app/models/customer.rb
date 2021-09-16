class Customer < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders
    has_many :items, through: :order_items

    has_secure_password

    validates :username, length: { maximum: 10 }
    validates :username, presence: true 
    validates :username, uniqueness: true 
end
