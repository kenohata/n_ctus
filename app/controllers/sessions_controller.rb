class SessionsController < Devise::SessionsController
  # require "email2student"
  # include Email2student
  before_filter :student_to_email
  
  def student_to_email
    # resource.email = "j#{resource.email}@ed.tus.ac.jp"
    params[:user][:email] = "j#{params[:user][:email]}@ed.tus.ac.jp"
  end
end