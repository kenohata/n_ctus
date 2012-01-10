class StaticPagesController < ApplicationController
  def campus
    @microposts = Micropost.all
    @micropost = current_user.microposts.build
  end
  
  def reading
    # @microposts = current_user.reading_users.map{|i| i.microposts}
    @microposts = current_user.reading_users.map{|i| i.microposts}[0]
  end
  
  def about
    #@profile = Profile.find(params[:id])
    @profile = User.find(params[:id]).profile

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end
end
