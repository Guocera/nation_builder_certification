class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def get_access_token
    site_path = 'https://branchoutdev.nationbuilder.com'
    client_id = OAUTH_CONFIG['client_id']
    client_secret = OAUTH_CONFIG['client_secret']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )
  end

  def get_request_token(redirect_uri)
    site_path = 'https://branchoutdev.nationbuilder.com'
    redirect_uri = 'http://localhost:3000/oauth/new'
    client_id = OAUTH_CONFIG['client_id']
    client_secret = OAUTH_CONFIG['client_secret']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )

    @oauth_authorize = client.auth_code.authorize_url(redirect_uri: redirect_uri)
  end
end
