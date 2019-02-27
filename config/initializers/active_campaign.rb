client = ::ActiveCampaign::Client.new(
        api_endpoint: ENV['END_POINT'],
        api_key: ENV['ACTIVE_CAMPAING_API'])


# ActiveCampaign.configure do |config|
#   config.api_endpoint = ENV['ACTIVECAMPAIGN_ENDPOINT']
#   config.api_key=ENV['ACTIVECAMPAIGN_API_KEY']
# end

# ::ActiveCampaign.configure do |config|
#   config.api_endpoint = ENV['END_POINT'],
#   config.api_key = ENV['ACTIVE_CAMPAING_API']
# end


# ::ActiveCampaign::Client.new(
#     api_endpoint: ENV['END_POINT'],
#     api_key: ENV['ACTIVE-CAMPAIGN-API'])


# ActiveCampaign.contact_sync({
#            "id" => "1",
#         "email" => "hello@gmail.com",
#    "first_name" => "Someone",
#     "last_name" => "Testing"
# })
