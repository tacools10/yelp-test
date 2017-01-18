class RestaurantsController < ApplicationController
  before_action :set_restaurant_id, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

    def set_restaurant_id
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :category, :address, :phone_number)
    end

end
