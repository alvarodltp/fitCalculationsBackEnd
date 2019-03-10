def client
	ActiveCampaign.new(
			api_endpoint: ENV['ACTIVE_CAMPAIGN_ENDPOINT'], 
			api_key: ENV['ACTIVE_CAMPAIGN_API_KEY']
	)
end
