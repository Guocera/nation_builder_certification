class PeopleController < ApplicationController

  def index

    client = get_client
    token = OAuth2::AccessToken.from_hash(client, session[:token])

    response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )      
    @people = JSON.parse(response.body)

  end
  
end
