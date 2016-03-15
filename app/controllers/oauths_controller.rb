class OauthsController < ApplicationController
  def new    
    code = params[:code]
    if code
      token = client.auth_code.get_token(code, redirect_uri: redirect_uri)
      response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )      
      @people = JSON.parse(response.body)
      session[:token] = token
    end


    redirect_to root_path
  end

  def destroy
    reset_session

    redirect_to root_path
  end
end
