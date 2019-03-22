class UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    render json: User.create(user_params)
  end

  def update
    @user.update(user_params)
    # if @user.save
    #   client.contact_add(
    #     "p[1]" => 1,
    #     "first_name" => @user.name,
    #     "email" => @user.email,
    #     "field[1,0]" => @user.stats[0].age,
    #     "field[2,0]" => @user.gender,
    #     "field[3,0]" => @user.stats[0].activity_level,
    #     "field[4,0]" => @user.stats[0].body_type,
    #     "field[5,0]" => @user.stats[0].weight_in_lb,
    #     "field[6,0]" => @user.stats[0].height_in_feet,
    #     "field[7,0]" => @user.stats[0].diet_type,
    #     "field[8,0]" => @user.stats[0].reason_to_get_fit,
    #     "field[9,0]" => @user.stats[0].calories_for_goal,
    #     "field[10,0]" => @user.stats[0].bmr,
    #     "field[11,0]" => @user.stats[0].bmi,
    #     "field[12,0]" => @user.stats[0].calories_to_maintain,
    #     "field[13,0]" => @user.stats[0].protein_grams,
    #     "field[14,0]" => @user.stats[0].carb_grams,
    #     "field[15,0]" => @user.stats[0].fat_grams,
    #     "field[16,0]" => @user.stats[0].protein_percentage,
    #     "field[17,0]" => @user.stats[0].carb_percentage,
    #     "field[18,0]" => @user.stats[0].fat_percentage,
    #     "field[19,0]" => @user.stats[0].height_in_inches,
    #     "field[20,0]" => @user.stats[0].goal) if @user.email.present?
      render json: @user, status: :accepted
      # redirect_to(@user, :notice => 'User created')
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :gender)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
