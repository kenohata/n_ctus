class Micropost < ActiveRecord::Base
  has_many :comments
end
