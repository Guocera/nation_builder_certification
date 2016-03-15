class OauthsController < ApplicationController
  def new    
    code = params[:code]
    if code
      token = client.auth_code.get_token(code, redirect_uri: redirect_uri)
      session[:token] = token
    end

    redirect_to people_path
  end

  def destroy
    reset_session

    redirect_to root_path
  end
end
