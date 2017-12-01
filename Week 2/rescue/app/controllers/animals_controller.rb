class AnimalsController < ApplicationController
  def show
        @animal=Animal.new
        @animal.name="Homeboy"
        @animal.age=-3
        @animal.kind="Calc Student"
        @animal.food="Chalkdust"
  end
  def new
        @animal = Animal.new
  end
  def create
    params.permit!
    @animal = Animal.new(params[:animal])
    if @animal.valid?
      render action: :show
    else
      render action: :new
    end
  end
end
