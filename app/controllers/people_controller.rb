class PeopleController < ApplicationController

  def index
    # response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )      
    # @people = JSON.parse(response.body)

 
    site_path = 'https://branchoutdev.nationbuilder.com'
    client_id = OAUTH_CONFIG['client_id']
    client_secret = OAUTH_CONFIG['client_secret']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )

    @token = OAuth2::AccessToken.from_hash(client, session[:token]).inspect
    @client = client.inspect
  end
  
end
