class ResultsController < ActionController::Base
  protect_from_forgery with: :exception
  def index

  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      #a
    else
      render 'new'
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
