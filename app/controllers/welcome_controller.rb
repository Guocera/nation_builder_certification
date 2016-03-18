class WelcomeController < ApplicationController
  def index
    require 'oauth2'
    require 'json'

    redirect_url = 'http://localhost:3000/oauth/new'
    @oauth_authorize = get_request_token(redirect_url)


  end
end
