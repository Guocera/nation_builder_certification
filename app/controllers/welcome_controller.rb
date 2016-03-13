class WelcomeController < ApplicationController
  def index
    require 'oauth2'
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
    @token = session[:token]
    @client_id = client_id
    @oauth_authorize = client.auth_code.authorize_url(redirect_uri: redirect_uri)
  end
end
