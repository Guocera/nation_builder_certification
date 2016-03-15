class PeopleController < ApplicationController

  def index
    # response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )      
    # @people = JSON.parse(response.body)

 
    client = get_client

    @token = OAuth2::AccessToken.from_hash(client, session[:token]).inspect
    @client = client.inspect
  end
  
end
