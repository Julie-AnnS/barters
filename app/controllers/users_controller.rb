class UsersController < ApplicationController
  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @existing_conversation = Conversation.get_conversation(current_user, @user).first
      # find said convo
    # else
      #@conversation = Conversation.create
    # end
    @review = Review.new
  end
end
