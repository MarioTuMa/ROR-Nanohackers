class EventsController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @events=Event.all
  end

  def new
    @event = Event.new
  end

  def create
    params.permit!
    @event = Event.new(params[:event])
    if @event.save
      render action: :show
    else
      render action: :new
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
