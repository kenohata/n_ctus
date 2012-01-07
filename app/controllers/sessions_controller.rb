class SessionsController < Devise::SessionsController
  before_filter :email_eq_student_id, only: :create

  def email_eq_student_id
    params[:user][:email] = "j#{params[:user][:student_id]}@ed.tus.ac.jp"
  end
end