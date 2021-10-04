class Vendor < ApplicationRecord
    has_many :items 


    validates :name, presence: true
    validates :description, presence: true
    validates :email, presence: true
    validates :username, length: { maximum: 10 }
    validates :username, presence: true 
    validates :username, uniqueness: true 

    has_secure_password
end
