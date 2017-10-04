class UsersController < ApplicationController
  def index
    @users = User.sort_by_social_connection_index
    # # @users = User.sort_by_twitter_followers
    # @users = User.sort_by_facebook_friends

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
