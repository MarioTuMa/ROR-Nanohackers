class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  def show
        @animal=Animal.find(params[:id])

  end
  def new
        @animal = Animal.new
  end
  def create
    params.permit!
    @animal = Animal.new(params[:animal])
    if @animal.save
      render action: :show
    else
      render action: :new
    end
  end
end
