class Reading < ActiveRecord::Base
  belongs_to :user
  belongs_to :reading_user, :class_name => "User", :foreign_key => "readed_id"
end
