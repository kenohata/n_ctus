class Note < ActiveRecord::Base
  has_many :note_images
  has_many :pages
  default_scope order("updated_at DESC")
end
