class UsersController < ApplicationController
  def index
    @users = User.excluding(current_user)
    if params[:query_services].present? || params[:query_location].present?
      @users = User.search_artists("#{params[:query_services]} #{params[:query_location]}")
    end
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @offer = Offer.between_users(current_user, @user)
    @review = Review.new
    @existing_conversation = Conversation.get_conversation(current_user, @user).first
      # find said convo
    # else
      #@conversation = Conversation.create
    # end
  end
end
