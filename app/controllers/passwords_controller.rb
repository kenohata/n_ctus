class PasswordsController < Devise::PasswordsController
  require "email2student"
  include Email2student
end