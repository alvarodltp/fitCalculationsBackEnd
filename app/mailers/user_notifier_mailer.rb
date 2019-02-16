class UserNotifierMailer < ApplicationMailer
  # require 'rest_client'
  active_campaign = ActiveCampaign.new(
    api_endpoint: ENV['END_POINT'], # e.g. 'https://yourendpoint.api-us1.com'
    api_key: ENV['ACTIVE_CAMPAING_API']) # e.g. 'a4e60a1ba200595d5cc37ede5732545184165e'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  # def add_user_to_list(user)
  #   @user = user
  #   mail( :to => @user.email,
  #   :subject => 'Thanks for signing up for our amazing app' )
  # end

  def add_contact(user)
    @user = user
    active_campaign.contact_add(
      email: @user.email,
      first_name: @user.name)
  end
end
