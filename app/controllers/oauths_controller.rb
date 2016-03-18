class OauthsController < ApplicationController
  def new    
    get_access_token(root_path)
  end

  def destroy
    reset_session

    redirect_to root_path
  end
end