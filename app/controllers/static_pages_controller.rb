class StaticPagesController < ApplicationController
  def campus
    @microposts = Micropost.all
  end
  
  def reading
    # @microposts = current_user.readings.microposts
  end

end
