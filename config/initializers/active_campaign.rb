def client
ActiveCampaign.new(
		api_endpoint: ENV['ACTIVE_CAMPAIGN_ENDPOINT'], # e.g. 'https://yourendpoint.api-us1.com'
		api_key:ENV['ACTIVE_CAMPAIGN_API_KEY']
)
end
