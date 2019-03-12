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
        "email" => @user.email,
        "p[2]" => 1,
        "first_name" => @user.name,
        "age" => @user.age,
        "gender" => @user.gender) if @user.email.present?
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
