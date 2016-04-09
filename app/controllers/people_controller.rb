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
    @person = Person.new(person_params)

    token.post('/api/v1/people', body: { "person": {
      "email": @person.email,
      "last_name": @person.last_name,
      "first_name": @person.first_name
    }}.to_json, headers: { "Accept": "application/json", "Content-Type": "application/json" })

    redirect_to people_path
  end

  def edit
    
  end

  def update
    @person = Person.new(person_params)

    token.put("/api/v1/people/#{@person.id}", body: { "person": {
      "email": @person.email,
      "last_name": @person.last_name,
      "first_name": @person.first_name
    }}.to_json, headers: { "Accept": "application/json", "Content-Type": "application/json" })

    redirect_to people_path 
  end

  def destroy
    id = params[:id]
    token.delete("/api/v1/people/#{id}")

    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :email, :id)
  end
end