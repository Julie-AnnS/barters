class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy accept decline]

  def index
    @sent_offers = Offer.where(requester: current_user)
    @received_offers = Offer.where(collaborator: current_user)
  end

  def my_offers
    @offers = Offer.where(collaborator: current_user)
  end

  def new
    @collaborator = User.find(params[:id])
    @offer = Offer.new
  end

  def show
  end

  def create
    @collaborator = User.find(params[:id])
    @offer = Offer.new(offer_params)
    @offer.requester = current_user
    @offer.collaborator = @collaborator
    if @offer.save
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy
    redirect_to offers_path, status: :see_other
  end

  def accept
    if @offer.accepted!
      redirect_to my_offers_path, notice: 'Offer accepted'
    else
      redirect_to my_offers_path, notice: 'Offer could not be accepted - please try again'
    end
  end

  def decline
    if @offer.declined!
      redirect_to my_offers_path, notice: 'Offer rejected'
      @offer.destroy
    else
      redirect_to my_offers_path, notice: 'Offer could not be rejected - please try again'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:start_date, :end_date, :my_tasks, :others_tasks, :deposit)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  # def notify_recipient
  #   notification = OfferNotification.with(offer: @offer)
  #   user = @offer.collaborator

  #   notification.deliver_later(user)
  #   NotificationChannel.broadcast_to(
  #     user,
  #     notification: render_to_string(partial: "layouts/notification", locals: { notification: notification }),
  #   )
  # end
end
