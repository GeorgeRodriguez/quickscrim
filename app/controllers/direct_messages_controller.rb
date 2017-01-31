class DirectMessagesController < ApplicationController
  before_action do
   @friendship = Friendship.find(params[:friendships_id])
  end

def index
 @direct_messages = @friendship.messages
  if @direct_messages.length > 10
   @over_ten = true
   @direct_messages = @direct_messages[-10..-1]
  end
  if params[:m]
   @over_ten = false
   @direct_messages = @friendship.messages
  end
 if @direct_messages.last
  if @direct_messages.last.user_id != current_user.id
   @direct_messages.last.read = true;
  end
 end
@direct_message = @friendship.messages.new
 end

def new
 @direct_message = @friendship.messages.new
end

def create
 @direct_message = @friendship.messages.new(direct_message_params)
 if @direct_message.save
  redirect_to friendship_messages_path(@friendship)
 end
end

private
 def direct_message_params
  params.require(:direct_message).permit(:body, :user_id)
 end
end
