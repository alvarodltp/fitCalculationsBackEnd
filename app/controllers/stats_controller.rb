class StatsController < ApplicationController
  before_action :find_stat, only: [:update]

  def index
    render json: Stat.all
  end

  def show
    render json: Stat.find(params[:id])
  end

  def create
    render json: Stat.create(stat_params)
  end

  def update
    @stat.update(stat_params)
    if @stat.save
      render json: @stat, status: :accepted
    else
      render json: { errors: @stat.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private
  def stat_params
    params.require(:stat).permit(:user_id, :date, :calories_to_maintain, :calories_for_goal, :bmr, :protein_grams, :carb_grams, :fat_grams, :protein_percentage, :carb_percentage, :fat_percentage)
  end

  def find_stat
    @stat = Stat.find(params[:id])
  end

end
