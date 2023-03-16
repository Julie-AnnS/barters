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

    if @user.first_name == "Annie"
      @images = ["Painter/pexels-photo-1045299.jpg","Painter/pexels-photo-1418595.jpg","Painter/pexels-photo-1550564.jpg","Painter/pexels-photo-1724888.jpg"]
    elsif @user.first_name == "Lea"
      @images = ["Ceramist/ceramist.jpg","Ceramist/IMG_4165_2_1024x1024.jpg","Ceramist/iStock-1460597547.jpg","Ceramist/potterybypriscilla.jpg"]
    elsif @user.first_name == "Bobe"
      @images = ["Embroiderer/embroiderer-index.jpg","Embroiderer/iStock-115865739.jpg","Embroiderer/il_fullxfull.2070631763_2eoe.jpg","Embroiderer/embroidery-on-clothes-DJ-680fd9a.jpg"]
    else
      @images = []
    end
  end
end
