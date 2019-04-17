class FoodsController < ApplicationController

  def index
    render json: Food.all
  end

  def show
    render json: Food.find(params[:id])
  end
end
