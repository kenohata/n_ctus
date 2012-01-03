class Page < ActiveRecord::Base
  belongs_to :note
  mount_uploader :attachment, AttachmentUploader
end
