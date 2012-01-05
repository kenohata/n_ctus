class StaticPagesController < ApplicationController
  def campus
    @microposts = Micropost.all
    @micropost = current_user.microposts.build
  end
  
  def reading
    # @microposts = current_user.readings.microposts
  end

end
