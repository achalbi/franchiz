class WelcomeController < ApplicationController
  skip_before_action :require_login, only: [:thanks], raise: false

  layout proc {logged_in? ? 'application' : 'application_ns' }
  
  def index
  end
  def thanks
  end
end
