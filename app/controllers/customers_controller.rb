class CustomersController < ApplicationController
  skip_before_action :authorize, only: :create 

    def create
        customer = Customer.create!(customer_params)
        session[:customer_id] = customer.id 
        render json: customer, status: :created 
    end


    private 

    def customer_params
      customer_params = params.require(:customer).permit(:username, :password, :password_confirmation)
    end
end
