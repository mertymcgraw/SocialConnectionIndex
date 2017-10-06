require 'will_paginate/array'

class UsersController < ApplicationController
  def index
    @users = User.sort_by_social_connection_index.paginate(:page => params[:page], :per_page => 5)
    
    p "********"
    p params
    p params[:filter]
    p "********"

    if params[:filter]
      @users = User.sorted_by(params[:filter]).paginate(:page => params[:page], :per_page => 5)
    end 

    if params[:search]
      @users = User.search(params[:search]).order("name ASC").paginate(:page => params[:page], :per_page => 5)
    end

    respond_to do |format|
      format.html {}
      format.js {}
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
