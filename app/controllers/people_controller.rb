class PeopleController < ApplicationController

  def index
    response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )
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