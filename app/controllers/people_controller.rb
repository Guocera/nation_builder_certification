class PeopleController < ApplicationController

  def index
    @person = Person.new
    response = token.get('/api/v1/people', headers: { "Accept": "application/json" }, params: { page: 1 } )
    @people = JSON.parse(response.body)["results"]
  end
  
  def show
    
  end

  def new
    @person = Person.new
  end

  def create
    
  end

  def edit
    
  end

  def destroy
    
  end
end