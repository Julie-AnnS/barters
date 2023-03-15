# To deliver this notification:
#
# MessageNotification.with(post: @post).deliver_later(current_user)
# MessageNotification.with(post: @post).deliver(current_user)

class MessageNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    @conversation = Conversation.find(params[:message][:conversation_id])
    @message = Message.find(params[:message][:id])
    @user = User.find(@message.user_id)
    "#{@user.nickname} sent you a message."
  end
  #
  def url
    conversation_path(Conversation.find(params[:message][:conversation_id]))
  end
end
