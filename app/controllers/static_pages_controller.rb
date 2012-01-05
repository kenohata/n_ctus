class StaticPagesController < ApplicationController
  def campus
    @microposts = Micropost.all
    @micropost = current_user.microposts.build
  end
  
  def reading
    # @microposts = current_user.reading_users.map{|i| i.microposts}
    @microposts = current_user.reading_users.map{|i| i.microposts}[0]
  end

end
