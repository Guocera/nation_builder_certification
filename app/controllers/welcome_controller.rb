class WelcomeController < ApplicationController
  def index
    require 'oauth2'
    site_path = 'https://branchoutdev.nationbuilder.com'
    redirect_uri = 'http://localhost:3000/oauth_callback'
    client_id = ENV['CLIENT_ID']
    client_secret = ENV['CLIENT_SECRET']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )

    @oauth_authorize = client.auth_code.authorize_url(redirect_uri: redirect_uri)
  end
end
