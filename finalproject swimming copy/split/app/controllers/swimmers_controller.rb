class SwimmersController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @swimmers = Swimmer.all
  end
  def show
        @swimmer=Swimmer.find(params[:id])

  end
  def new
        @swimmer = Swimmer.new
  end
  def create
    params.permit!
    @swimmer = Swimmer.new(params[:swimmer])
    if @swimmer.save
      render action: :show
    else
      render action: :new
    end
  end



  def edit
  end

  def update
  end

  def destroy
  end
end
