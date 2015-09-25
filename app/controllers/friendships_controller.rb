class FriendshipsController < ApplicationController

  def create
    @user = User.find 2
    @friendship = @user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      redirect_to :back
    end
  end

  def destroy
    @user= User.find 2
    @friendship = @user.friendships.where("id = ?", params[:id]).last
    @friendship.delete
    redirect_to :back
    debugger
  end

end
