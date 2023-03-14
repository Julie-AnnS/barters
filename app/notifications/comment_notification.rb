# To deliver this notification:
#
# CommentNotification.with(post: @post).deliver_later(current_user)
# CommentNotification.with(post: @post).deliver(current_user)

class CommentNotification < Noticed::Base
  deliver_by :database
  deliver_by :action_cable
  # Add your delivery methods
  #
  # deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end

  def url
    post_path(params[:post])
  end
  
  Rails.application.routes.default_url_options[:host] = 'localhost:3000'
  notification = CommentNotification.with(comment: @comment)
  notification.deliver(@comment.post.author)
end
