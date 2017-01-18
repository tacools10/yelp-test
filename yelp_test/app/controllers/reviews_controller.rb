class ReviewsController < ApplicationController

  before_action :find_restaurant, only: [:new, :create, :edit, :update]
  before_action :find_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    @review = params.require(:review).permit(:content, :rating)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
