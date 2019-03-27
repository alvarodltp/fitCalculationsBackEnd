class StatsController < ApplicationController
  before_action :find_stat, only: [:update]
  before_action :find_user, only: [:create]

  def index
    render json: Stat.all
  end

  def show
    render json: Stat.find(params[:id])
  end

  def create
    render json: Stat.create(stat_params)
    client.contact_add(
      "p[1]" => 1,
      "first_name" => @user.name,
      "email" => @user.email,
      "field[1,0]" => @stat[0].age,
      "field[2,0]" => @gender,
      "field[3,0]" => @stat[0].activity_level,
      "field[4,0]" => @stat[0].body_type,
      "field[5,0]" => @stat[0].weight_in_lb,
      "field[6,0]" => @stat[0].height_in_feet,
      "field[7,0]" => @stat[0].diet_type,
      "field[8,0]" => @stat[0].reason_to_get_fit,
      "field[9,0]" => @stat[0].calories_for_goal,
      "field[10,0]" => @stat[0].bmr,
      "field[11,0]" => @stat[0].bmi,
      "field[12,0]" => @stat[0].calories_to_maintain,
      "field[13,0]" => @stat[0].protein_grams,
      "field[14,0]" => @stat[0].carb_grams,
      "field[15,0]" => @stat[0].fat_grams,
      "field[16,0]" => @stat[0].protein_percentage,
      "field[17,0]" => @stat[0].carb_percentage,
      "field[18,0]" => @stat[0].fat_percentage,
      "field[19,0]" => @stat[0].height_in_inches,
      "field[20,0]" => @stat[0].goal)
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
    params.require(:stat).permit(:user_id, :date, :calories_to_maintain, :calories_for_goal, :bmr, :bmi, :protein_grams, :carb_grams, :fat_grams, :protein_percentage, :carb_percentage, :fat_percentage, :age, :activity_level, :goal, :body_type, :weight_in_kg, :weight_in_lb, :height_in_cm, :height_in_feet, :height_in_inches, :diet_type, :reason_to_get_fit)
  end

  def find_stat
    @stat = Stat.find(params[:id])
  end

  def find_user
    @user = Stat.user
  end
end
