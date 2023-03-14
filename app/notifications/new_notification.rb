# To deliver this notification:
#
NewNotification.with(post: @post).deliver_later(current_user)
NewNotification.with(post: @post).deliver(current_user)

class NewNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database, format: :to_database
  deliver_by :action_cable
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #

  def to_database
    {
    type: self.class.name,
    params: params
    }
  end

  # def to_action_cable
  #   {
  #   type: self.class.name,
  #   params: params
  #   }
  # end

  param :post

  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end

  def url
    post_path(params[:post])
  end
end
