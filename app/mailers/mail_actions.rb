class MailActions < ApplicationMailer
  # require 'rest_client'
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
