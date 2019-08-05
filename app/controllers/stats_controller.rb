class StatsController < ApplicationController
  skip_before_action :authenticate
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
    params.require(:stat).permit(:user_id, :date, :calories_to_maintain, :calories_for_goal, :bmr, :bmi, :protein_grams, :carb_grams, :fat_grams, :protein_percentage, :carb_percentage, :fat_percentage, :age, :activity_level, :goal, :body_type, :weight_in_kg, :weight_in_lb, :height_in_cm, :height_in_feet, :height_in_inches, :diet_type, :reason_to_get_fit, :measurement_system, :weight_to_manage)
  end

  def find_stat
    @stat = Stat.find(params[:id])
  end
end
