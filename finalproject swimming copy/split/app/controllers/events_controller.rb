class EventsController < ActionController::Base
  protect_from_forgery with: :exception
  def index

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      #a
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
