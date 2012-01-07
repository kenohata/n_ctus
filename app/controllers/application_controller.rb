class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
    
  def redirect_url
     new_user_registration_path
    
    
  end
end
