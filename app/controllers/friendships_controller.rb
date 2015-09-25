class FriendshipsController < ApplicationController

  def create
    @user = User.find 2
    @friendship = @user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      redirect_to :back
    end
  end

end
