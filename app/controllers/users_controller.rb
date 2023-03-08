class UsersController < ApplicationController
  def index
    @users = User.all
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
