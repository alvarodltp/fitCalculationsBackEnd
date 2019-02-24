class UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def active_campaign
    ActiveCampaign.new(
      api_endpoint: ENV['END_POINT'], # e.g. 'https://yourendpoint.api-us1.com'
      api_key: ENV['ACTIVE_CAMPAING_API']) # e.g. 'a4e60a1ba200595d5cc37ede5732545184165e'
  end

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
      # render json: @user, status: :accepted
      redirect_to(@user, :notice => 'User created')
      if @user["email"] != ""
      # Deliver the signup email
      @active_campaign.contact_add(
        email: @user.email,
        first_name: @user.name)
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
      end
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
