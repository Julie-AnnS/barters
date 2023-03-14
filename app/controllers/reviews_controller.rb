class ReviewsController < ApplicationController
  def create
    @user = User.find(params[:id])
    @review = Review.new(review_params)
    @review.user = @user
    offer = Offer.between_users(current_user, @user)
    if offer.nil?
      raise "No offer"
    end
    @review.offer = offer
    respond_to do |format|
      if @review.save
        format.html { redirect_to artist_path(@user) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "users/show", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def new
  end
end
