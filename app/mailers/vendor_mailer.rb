class VendorMailer < ApplicationMailer

    def welcome_vendor
        @vendor = params[:vendor]
        byebug
        @url = 'http://localhost:3001/login'
        mail(to: @vendor.email, subject: 'Welcome!')
    end
end
