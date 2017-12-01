class SwimmersController < ActionController::Base
  protect_from_forgery with: :exception
  def index



      @swimmers = Swimmer.search(params[:term])

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
    @swimmer=Swimmer.find(params[:id])
  end

  def update
  end

  def destroy
  end
  def swimmer_params
    params.require(:last_name).permit(:first_name, :age, :club)
  end
end
