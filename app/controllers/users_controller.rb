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
    if @user.save
      client.contact_add(
        "p[2]" => 1,
        "first_name" => @user.name,
        "email" => @user.email,
        "field[%AGE%,0]" => @user.age,
        "field[%ACTIVITY_LEVEL%,0]" => @user.activity_level,
        "field[%GOAL%,0]" => @user.goal,
        "field[%BODY_TYPE%,0]" => @user.body_type,
        "field[%WEIGHT_LB%,0]" => @user.weight_in_lb,
        "field[%HEIGHT_IN_FEET%,0]" => @user.height_in_feet,
        "field[%DIET_TYPE%,0]" => @user.diet_type,
        "field[%REASON_TO_GET_FIT%,0]" => @user.reason_to_get_fit,
        "field[%CALORIES%,0]" => @user.stats[0].calories_for_goal
        ) if @user.email.present?
      render json: @user, status: :accepted
      # redirect_to(@user, :notice => 'User created')
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :gender, :age, :activity_level, :goal, :body_type, :weight_in_kg, :weight_in_lb, :height_in_cm, :height_in_feet, :height_in_inches, :diet_type, :reason_to_get_fit)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
