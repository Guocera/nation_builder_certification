class OauthsController < ApplicationController
  def new
    session[:code] = params[:code]
    redirect_to root_path
  end
end
