class WelcomeController < ApplicationController
  def index
    require 'oauth2'
    require 'json'

    @oauth_authorize = get_request_token
    session[:authenticate] = @oauth_authorize

  end
end
