class CustomersController < ApplicationController
  skip_before_action :authorize, only: :create 

    def create
        customer = Customer.create!(customer_params)
        session[:customer_id] = customer.id 
        if customer 
          CustomerMailer.with(customer: customer).welcome_customer.deliver_now

          render json: customer, status: :created
        end

        else 
          format json { render json: customer.errors, status: unprocessable_entity }
        end
    end


    private 

    def customer_params
      customer_params = params.require(:customer).permit(:name, :username, :email, :password, :password_confirmation)
    end
end
