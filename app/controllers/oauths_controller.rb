class OauthsController < ApplicationController
  def new    
    code = params[:code]
    site_path = 'https://branchoutdev.nationbuilder.com'
    redirect_uri = 'http://localhost:3000/oauth/new'
    client_id = OAUTH_CONFIG['client_id']
    client_secret = OAUTH_CONFIG['client_secret']
    client = OAuth2::Client.new(
      client_id, 
      client_secret,
      site: site_path
    )
    token = client.auth_code.get_token(code, redirect_uri: redirect_uri).to_hash
    session[:token] = token

    redirect_to people_path
  end

  def destroy
    reset_session

    redirect_to root_path
  end
end
