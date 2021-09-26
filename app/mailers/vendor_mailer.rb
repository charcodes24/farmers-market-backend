class VendorMailer < ApplicationMailer

    def welcome_vendor
        @vendor = params[:vendor]
        @url = 'http://localhost:3001/login'
        mail(to: @vendor.email, subject: 'Welcome!')
    end
end
