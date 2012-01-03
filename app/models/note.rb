class Note < ActiveRecord::Base
  has_many :note_images
  has_many :pages
end
