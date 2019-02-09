class UserNotifierMailer < ApplicationMailer
  require 'rest_client'
  default :from => 'fitcalculations@gmail.com'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end

  # def add_user_to_list(user)
  #   api_key = ENV['SENDGRID_API']
  #   headers = {'Authorization' => "Bearer #{ENV['SENDGRID_API']}"}
  #   data = {:email => @user.email}
  #   response = RestClient.post 'https://api.sendgrid.com/v3/contactdb/lists/{8274}/recipients/{@user["id"]}', [data].to_json, headers
  # end
end
