# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["MAIL_USERNAME"],
  :password => ENV["MAIL_PASSWORD"],
  :domain => 'https://www.fitcalculations.com/bmr-calories-macros',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
