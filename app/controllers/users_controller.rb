class UsersController < ApplicationController
  def index
   @users = User.sort_by_social_connection_index

    if request.xhr?
      if params[:filter] == "name"
        @users = User.sort_by_name
      elsif params[:filter] == "linkedin"
        @users = User.sort_by_linkedin_connections
      elsif params[:filter] == "facebook"
        @users = User.sort_by_facebook_friends
      elsif params[:filter] == "twitter"
        @users = User.sort_by_twitter_followers
      else
       @users = User.sort_by_social_connection_index
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
