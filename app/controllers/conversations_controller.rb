class ConversationsController < ApplicationController

  def show
    @conversations = current_user.conversations
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    mark_notifications_as_read
  end

  def index
    like = "%#{params[:query].downcase}%"
    @conversations = current_user
      .conversations
      .joins("inner join users on conversations.participant_one_id = users.id or conversations.participant_two_id = users.id")
      .where('lower(users.first_name) like ? or lower(users.last_name) like ?', like, like)
      .uniq

    respond_to do |format|
      format.html { render partial: "conversations/list", locals: {conversations: @conversations}, formats: [:html] }
      format.text { render partial: "conversations/list", locals: {conversations: @conversations}, formats: [:html] }
    end
  end

  def create
    @conversation = Conversation.create(participant_one_id: current_user.id, participant_two_id: params[:artist_id])
    redirect_to conversation_path(@conversation)
  end

  private

  def mark_notifications_as_read
    if current_user
      notifications_to_mark_as_read = @conversation.notifications_as_conversation.where(recipient: current_user)
      notifications_to_mark_as_read.update_all(read_at: Time.zone.now)
    end
  end
end
