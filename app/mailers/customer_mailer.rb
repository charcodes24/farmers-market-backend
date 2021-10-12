class CustomerMailer < ApplicationMailer

    def welcome_customer
        @customer = params[:customer]
        @url = 'http://localhost:3001/login'
        mail(to: @customer.email, subject: 'Welcome!')
    end

    def order_notification
        @customer = params[:customer]
        @items = params[:items]
        @x = Hash.new(0)
        @items.each {|item| @x[item] += 1}
        mail(to: @customer.email, subject: 'Thanks for your order!')
    end
end
