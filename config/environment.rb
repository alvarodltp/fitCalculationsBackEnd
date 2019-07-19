# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

client = ActiveCampaign.new(
  api_endpoint: ENV['END_POINT'],
  api_key: ENV['ACTIVE_CAMPAING_API'])

Dir[Rails.root.join('lib/**/*.rb')].each { |f| require f }
