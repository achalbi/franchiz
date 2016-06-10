# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def welcome_email
      
    business = Business.find(8)
    inquiry = Inquiry.find(17)
      
    UserMailer.welcome_email(business, inquiry)
        
  end

end
