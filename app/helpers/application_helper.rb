module ApplicationHelper
  
  def read_or_unread(user)
    if user.id != current_user.id
      if reading = current_user.readings.find_by_readed_id(user.id)
        link_to "Unfollow" ,reading,method: :delete
      else
        link_to "Read!",readings_path(:readed_id => user.id),method: :post
      end
    end
  end

  def avatar_image_thumb(user)
    if user.profile.avatar.to_s == nil
      link_to(image_tag("avatar_thumb.png"), user_profile_path(user.profile))
    else
      link_to(image_tag(user.profile.avatar_url(:thumb).to_s), user_profile_path(user.profile))
    end
  end
  
  def li_point(name)
    if params[:controller] == "boards"
      if name == params[:action]
         "#{name} here"
      else
        name
      end
    elsif params[:controller] == "communities"
      if params[:action] == "index"
        "#{name} here"
      end
    end
  end
  
end