class RegistrationsController < Devise::RegistrationsController
  require "email2student"
  include Email2student
end