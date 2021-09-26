class CustomerMailer < ApplicationMailer

    def welcome_customer
        @customer = params[:customer]
        @url = 'http://localhost:3001/login'
        mail(to: @customer.email, subject: 'Welcome!')
    end
end
