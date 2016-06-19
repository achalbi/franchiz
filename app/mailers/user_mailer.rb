class UserMailer < ApplicationMailer
    default from: 'achal.indiresh@strata.co.in'
    
    def welcome_email(business, inquiry)
        @user = inquiry.user
        @business = business
        @inquiry = inquiry
        @url  = "https://franchiz-achalbi.c9users.io/inquiries/"+inquiry.id.to_s
     #   email_with_name = %("#{@user.name}" <#{@user.email}>)
        email = @user.email
        mail(to: email,cc: @business.biz_users.map{|u| u.email}[0] ,subject: "Thanks for your interest at #{@business.name} your inquiry no: "+inquiry.token)
    end
    
    def survey_user_input_email(inquiry)
        @user = inquiry.user
        @business = inquiry.business
        @inquiry = inquiry
        @url  = "https://franchiz-achalbi.c9users.io/businesses/"+@business.id.to_s+"/inquiries/"+inquiry.id.to_s+"/surveys/"+inquiry.survey.id.to_s+"/edit"
     #   email_with_name = %("#{@user.name}" <#{@user.email}>)
        email = @user.email
        mail(to: email ,cc: @business.biz_users.map{|u| u.email}[0] ,subject: "inquiry:"+inquiry.token+" updated on "+inquiry.updated_at.strftime("%m/%d/%Y at %I:%M%p"))
    end
    
    def survey_biz_review_email(inquiry)
        @business = inquiry.business
        @inquiry = inquiry
        @url  = "https://franchiz-achalbi.c9users.io/businesses/"+@business.id.to_s+"/inquiries/"+inquiry.id.to_s+"/surveys/"+inquiry.survey.id.to_s+"/"
        mail(to: @business.biz_users.map{|u| u.email}[0] ,subject: "inquiry:"+inquiry.token+" ready for review ")
    end
end
