class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @event = Event.new
    response = token.get("/api/v1/sites/#{site_slug}/pages/events", headers: { "Accept": "application/json" })
    @events = JSON.parse(response.body)["results"]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    puts "Status: ", @event.status
    token.post("/api/v1/sites/#{site_slug}/pages/events", body: { "event": {
      "name": @event.name,
      "status": @event.status,
      "start_time": @event.start_time,
      "end_time": @event.end_time
    }}.to_json, headers: { "Accept": "application/json", "Content-Type": "application/json" })

    redirect_to events_path
  end

  def update
    @event = Event.new(event_params)

    token.put("/api/v1/sites/#{site_slug}/pages/events/#{@event.id}", body: { "event": {
      "name": @event.name,
      "status": @event.status,
      "start_time": @event.start_time,
      "end_time": @event.end_time
    }}.to_json, headers: { "Accept": "application/json", "Content-Type": "application/json" })

    redirect_to events_path 
  end

  private

  def event_params
    params.require(:event).permit(:name, :id, :status, :start_time, :end_time)
  end

end
