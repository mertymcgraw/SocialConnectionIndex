class UsersController < ApplicationController
  def index
    @users = User.all
    p @users.last
    p @users.last.social_connection_index

  end 

  def edit
    p "**************"
    p @user = User.find(params[:id])
    p "**************"

  end 

  def update
    p "I AM IN UPDATE"
    @user = User.find(params[:id])
    if @user.update(params[:user].permit(:name, :linkedin_connections, :facebook_friends, :twitter_followers))
      p "THIS WORKEDDDDDDDDDDD"
      redirect_to '/'
    else
      render 'edit'
    end
  end

end
