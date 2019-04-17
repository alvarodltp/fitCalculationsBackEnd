class FoodListsController < ApplicationController
  before_action :find_food_list, only: [:update]

  def index
    render json: FoodList.all
  end

  def show
    render json: FoodList.find(params[:id])
  end

  def create
    render json: FoodList.create(food_list_params)
  end

  def update
    @food_list.update(food_list_params)
    if @food_list.save
      render json: @food_list, status: :accepted
    else
      render json: { errors: @food_list.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private
  def food_list_params
    params.require(:food_list).permit(:date, :user_id)
  end

  def find_food_list
    @food_list = FoodList.find(params[:id])
  end
end
