class UsersController < ApplicationController
  def index
   @users = User.sort_by_social_connection_index

    if request.xhr?
      if params[:filter] == "name"
        @users = User.sort_by(params[:filter]).reverse
      elsif params[:filter] == "rank"
        @users = User.sort_by_social_connection_index
      else
        @users = User.sort_by(params[:filter])
      end
      render '_users', layout: false
    end
  end 

  def edit
    @user = User.find(params[:id])

  end 

  def update
    
    @user = User.find(params[:id])
    if @user.update(params[:user].permit(:name, :linkedin_connections, :facebook_friends, :twitter_followers))
      redirect_to '/'
    else
      render 'edit'
    end
  end

end
