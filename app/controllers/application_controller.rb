class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def get_access_token(code)
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

    access_token = client.auth_code.get_token(code, redirect_uri: redirect_uri)
  end
end
