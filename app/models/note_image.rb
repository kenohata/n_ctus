class NoteImage < ActiveRecord::Base
  belongs_to :note
  mount_uploader :image, ImageUploader
  validate :image, presense: true
end
