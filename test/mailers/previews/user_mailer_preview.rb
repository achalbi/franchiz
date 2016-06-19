# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def welcome_email
      
    business = Business.find(8)
    inquiry = Inquiry.find(25)
      
    UserMailer.welcome_email(business, inquiry)
        
  end
  
  def survey_user_input_email
      
    inquiry = Inquiry.find(59)
      
    UserMailer.survey_user_input_email(inquiry)
        
  end

end
