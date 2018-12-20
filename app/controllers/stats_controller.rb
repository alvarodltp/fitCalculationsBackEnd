class StatsController < ApplicationController
  # before_action :find_stat

  def index
    render json: Stat.all
  end

  def show
    render json: Stat.find(params[:id])
  end

  def create
    render json: Stat.create(stat_params)
  end

  private
  def stat_params
    params.require(:stat).permit(:user_id, :date, :calories_to_maintain, :calories_for_goal, :bmr, :protein_grams, :carb_grams, :fat_grams, :protein_percentage, :carb_percentage, :fat_percentage)
  end

end
