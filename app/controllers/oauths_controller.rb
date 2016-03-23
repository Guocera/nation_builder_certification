class OauthsController < ApplicationController
  def new    
    redirect_uri = get_redirect_url
    client = get_client

    code = params[:code]
    token = client.auth_code.get_token(code, redirect_uri: redirect_uri).to_hash

    redirect_to root_path
  end

  def destroy
    reset_session

    redirect_to root_path
  end
end