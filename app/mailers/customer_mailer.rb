class CustomerMailer < ApplicationMailer

    def welcome_email
        byebug
        @customer = params[:customer]
        byebug
        @url = 'http://localhost:3001/login'
        mail(to: @customer.email, subject: 'Welcome!')
    end
end
