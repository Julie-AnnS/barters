class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #if @user and current_user have a convo
      # find said convo
    # else
      #@conversation = Conversation.create
    # end
    @review = Review.new
  end
end
