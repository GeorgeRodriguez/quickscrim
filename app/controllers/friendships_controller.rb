class FriendshipsController < ApplicationController
  before_action :authenticate_with_http_digest

  def show
    @users = User.all
    @friendships = Friendship.all
  end

  def new
  end

  def index
    @users = User.all
    @friendships = Friendship.all
  end

  def create
  if Friendship.between(params[:sender_id],params[:recipient_id])
    .present?
     @friendship = Friendship.between(params[:sender_id],
      params[:recipient_id]).first
  else
   @friendship = Friendship.create!(friendship_params)
  end

redirect_to friendship_messages_path(@friendship)

end

private
def friendship_params
 params.permit(:sender_id, :recipient_id)
end

end
