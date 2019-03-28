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
      "field[1,0]" => self.age,
      "field[2,0]" => self.gender,
      "field[3,0]" => self.activity_level,
      "field[4,0]" => self.body_type,
      "field[5,0]" => self.weight_in_lb,
      "field[6,0]" => self.height_in_feet,
      "field[7,0]" => self.diet_type,
      "field[8,0]" => self.reason_to_get_fit,
      "field[9,0]" => self.calories_for_goal,
      "field[10,0]" => self.bmr,
      "field[11,0]" => self.bmi,
      "field[12,0]" => self.calories_to_maintain,
      "field[13,0]" => self.protein_grams,
      "field[14,0]" => self.carb_grams,
      "field[15,0]" => self.fat_grams,
      "field[16,0]" => self.protein_percentage,
      "field[17,0]" => self.carb_percentage,
      "field[18,0]" => self.fat_percentage,
      "field[19,0]" => self.height_in_inches,
      "field[20,0]" => self.goal)
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
    @user = Stat.user.find(params[:id])
  end
end
