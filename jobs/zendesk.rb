# require 'zendesk_api'

# require 'oauth2'

# client = OAuth2::Client.new('{dashing_dashboard}',
# '{97c763b00ac8b8edfff81debdb718491e756b732ccc17b0b980bfa074edf96ac}',
# site: 'https://{gaugeinteractive}.zendesk.com',
# token_url: "/oauth/tokens",
# authorize_url: "/oauth/authorizations/new")
#   # Mandatory:

#   config.url = "https://gaugeinteractive.zendesk.com/api/v2" # e.g. https://mydesk.zendesk.com/api/v2

#  # Password strategy
# token = client.password.get_token('{Gaugeinteractive}', '{GaugeHolland}', scope: ["read", "write"])

# # Client credentials strategy
# token = client.client_credentials.get_token(user_id: {340427445}, scope: ["read", "write"])

# # Sample API request
# client = ZendeskAPI::Client.new do |c|
#   c.access_token = token.token
#   c.url = "https://{gaugeinteractive}.zendesk.com/api/v2"

#   require 'logger'
#   c.logger = Logger.new(STDOUT)
#   end