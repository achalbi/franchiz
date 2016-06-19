module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    session[:business_id] = current_business(user).id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= BizUser.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    session.delete(:business_id)
    @current_user = nil
    @business = nil
  end
  
  def current_business(user)
   @business = user.business
  end
end