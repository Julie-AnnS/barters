class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      notify_recipient
      head :ok
      #redirect_to conversation_path(@conversation)
    else
      render "conversations/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def notify_recipient
    notification = MessageNotification.with(message: @message, conversation: @conversation)

    if @conversation.participant_one_id == @message.user_id
      user = @conversation.participant_two
    else
      user = @conversation.participant_one
    end

    notification.deliver_later(user)
    NotificationChannel.broadcast_to(
      user,
      notification: render_to_string(partial: "layouts/notification", locals: { notification: notification }),
    )
  end
end
