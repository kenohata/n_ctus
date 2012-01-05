class Page < ActiveRecord::Base
  belongs_to :note
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader
end
