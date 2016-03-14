class WelcomeController < ApplicationController
  def index
    require 'oauth2'
    require 'json'

    site_path = 'https://branchoutdev.nationbuilder.com'
    redirect_uri = 'http://localhost:3000/oauth/new'
    client_id = OAUTH_CONFIG['client_id']
    client_secret = OAUTH_CONFIG['client_secret']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )

    @code = session[:code]
    if @code
      token = get_access_token(@code)
      response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )      
      @people = JSON.parse(response.body)
    end

    @client_id = client_id
    @oauth_authorize = client.auth_code.authorize_url(redirect_uri: redirect_uri)
  end
end
