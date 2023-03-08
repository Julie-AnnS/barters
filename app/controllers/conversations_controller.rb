class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def create
    @conversation = Conversation.create(participant_one_id: current_user.id, participant_two_id: params[:artist_id])
    redirect_to conversation_path(@conversation)
  end
end
