class PeopleController < ApplicationController

  def index
    client = get_access_token
    token = OAuth2::AccessToken.from_hash(client, session[:token])
    puts token.get('https://branchoutdev.nationbuilder.com/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )

    response = token.get('https://branchoutdev.nationbuilder.com/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )
    @people = JSON.parse(response.body)
  end
  
  def show
    
  end

  def new
    @person = Person.new
  end

  def edit
    
  end

  def destroy
    
  end
end