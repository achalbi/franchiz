class UserMailer < ApplicationMailer
    default from: 'achal.indiresh@strata.co.in'
    
    def welcome_email(business, inquiry)
        @user = inquiry.user
        @business = business
        @inquiry = inquiry
        @url  = "https://franchiz-achalbi.c9users.io/inquiries/"+inquiry.id.to_s
     #   email_with_name = %("#{@user.name}" <#{@user.email}>)
        email = @user.email
        mail(to: email, subject: "Thanks for your interest at #{@business.name}")
    end
end
