class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def get_client
    site_path = 'https://branchoutdev.nationbuilder.com'
    client_id = OAUTH_CONFIG['client_id']
    client_secret = OAUTH_CONFIG['client_secret']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )
  end
end
