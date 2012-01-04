class Reading < ActiveRecord::Base
  belongs_to :user
  belongs_to :reader, :class_name => "User", :foreign_key => "readed_id"
end
