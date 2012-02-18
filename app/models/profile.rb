class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  
  def before_destroy
    remove_avatar! if avatar != nil
  end
end
