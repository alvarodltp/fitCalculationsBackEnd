class FoodListsController < ApplicationController

  def index
    render json: FoodList.all
  end

  def show
    render json: FoodList.find(params[:id])
  end

end
