class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy accept decline]

  def index
    @offers = Offer.where(user: current_user)
  end

  def new
    @collaborator = User.find(params[:user_id])
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
      redirect_to offers_path(@offer)
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
      redirect_to offers_path, notice: 'Offer accepted'
    else
      redirect_to offers_path, notice: 'Offer could not be accepted - please try again'
    end
  end

  def decline
    if @offer.declined!
      redirect_to offers_path, notice: 'Offer rejected'
      @offer.destroy
    else
      redirect_to offers_path, notice: 'Offer could not be rejected - please try again'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:start_date, :end_date, :my_tasks, :others_tasks, :deposit, :status, :requester_id, :collaborator_id)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
