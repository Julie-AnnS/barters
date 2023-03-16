# To deliver this notification:
#
# OfferNotification.with(post: @post).deliver_later(current_user)
# OfferNotification.with(post: @post).deliver(current_user)

class OfferNotification < Noticed::Base
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
    @offer = Offer.find(params[:id])
    @user = User.find(@offer.requester)
    "#{@user.nickname} sent you an offer."
  end
  #
  def url
    offer_path(Offer.find(params[:id]))
  end
end
