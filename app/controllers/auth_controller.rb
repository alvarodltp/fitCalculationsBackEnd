class AuthController < ApplicationController
  skip_before_action :authenticate, only: [:login]

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = generate_token(@user)
      render json: { token: token, user: @user }, status: 200
    else
      render json: { message: 'Invalid username or password' }, status: 204
    end
  end

# private
#   def user_login_params
#     # params { user: {username: 'Chandler Bing', password: 'hi' } }
#     params.require(:user).permit(:email, :password)
#   end
end
