class Customer < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders
    has_many :items, through: :order_items


    # validates :name, presence: true
    # validates :email, presence: true
    # validates :username, length: { maximum: 10 }
    # validates :username, presence: true 
    # validates :username, uniqueness: true 

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }


    has_secure_password
end
