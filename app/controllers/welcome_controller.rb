class WelcomeController < ApplicationController
  def index
    redirect_uri = get_redirect_url
    client = get_client
    @oauth_authorize = client.auth_code.authorize_url(redirect_uri: redirect_uri)

  end
end
