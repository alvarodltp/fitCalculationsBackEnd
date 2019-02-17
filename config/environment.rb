# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

active_campaign = ActiveCampaign.new(
  api_endpoint: ENV['END_POINT'], # e.g. 'https://yourendpoint.api-us1.com'
  api_key: ENV['ACTIVE_CAMPAING_API']) # e.g. 'a4e60a1ba200595d5cc37ede5732545184165e'

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV["MAIL_USERNAME"],
#   :password => ENV["MAIL_PASSWORD"],
#   :domain => 'https://www.fitcalculations.com/bmr-calories-macros',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }
