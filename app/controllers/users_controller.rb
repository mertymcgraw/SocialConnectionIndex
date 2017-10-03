class UsersController < ApplicationController
  def index
    @users = User.all
    p @users.last
    p @users.last.social_connection_index

  end 

  def edit
    @user = User.find(params[:id])
  end 
end
