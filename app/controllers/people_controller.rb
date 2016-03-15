class PeopleController < ApplicationController

  def index
    # response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )      
    # @people = JSON.parse(response.body)

    @token = session[:token]
    @client = session[:client]
  end
  
end
