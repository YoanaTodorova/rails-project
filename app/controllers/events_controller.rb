class EventsController < ApplicationController
  around_filter :catch_not_found

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new event_params
    @event.save

    redirect_to events_path
  end

  private
  def catch_not_found
    yield
    rescue ActiveRecord::RecordNotFound
      redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:title, :description, :starts)
  end
end
