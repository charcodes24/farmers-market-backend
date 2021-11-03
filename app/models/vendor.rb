class Vendor < ApplicationRecord
    has_many :items 


    # validates :name, presence: true
    # validates :description, presence: true
    # validates :email, presence: true
    # validates :username, presence: true 
    # validates :username, uniqueness: true 

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    has_secure_password
end
