class VendorMailer < ApplicationMailer

    def welcome_vendor
        @vendor = params[:vendor]
        byebug
        @url = 'http://localhost:3001/login'
        mail(to: @vendor.email, subject: 'Welcome!')
    end

    def order_notification 
        @vendor = params[:vendor]
        @customer = params[:customer]
        @order = params[:order]
        @items = params[:items].select{|item| item.vendor_id === @vendor.id }
        @x = Hash.new(0)
        @items.each {|item| @x[item] += 1}
        mail(to: @vendor.email, subject: 'You have an order!')
    end
end
