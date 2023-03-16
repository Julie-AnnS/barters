class OfferChannel < ApplicationCable::Channel
  def subscribed
    offers = Offer.where(requester: current_user) ||
          Offer.where(collaborator: current_user)
    stream_for offers
  end
end
