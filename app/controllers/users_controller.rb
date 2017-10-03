class UsersController < ApplicationController
  def index
    @users = User.all
    p @users.last
    p @users.last.social_connection_index

  end 
end
