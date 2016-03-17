class OauthsController < ApplicationController
  def new    
    code = params[:code]
    client = get_client
    redirect_uri = 'http://localhost:3000/oauth/new'
    token = client.auth_code.get_token(code, redirect_uri: redirect_uri).to_hash
    session[:token] = token

    redirect_to root_path
  end

  def destroy
    reset_session

    redirect_to root_path
  end
end
