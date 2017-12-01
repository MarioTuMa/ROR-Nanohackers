class ResultsController < ActionController::Base
  protect_from_forgery with: :exception
  def index

  end

  def new
    @swimmer_id=params[:swimmer_id]
    if @swimmer_id
      @result=Result.new
      @result.swimmer_id=@swimmer_id
    else
      @result = Result.new
    end
  end

  def create
    params.permit!

    @result = Result.new(params[:result])
    if @result.save
      render action: :show
    else
      render action: :new
    end
  end

  def show
    @result = Result.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
