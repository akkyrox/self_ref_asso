class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show_friend_list
    debugger
    @user = User.find(params[:user_id])
  end

  def sign_up

  end
end
