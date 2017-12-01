class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def create
    params.permit!

    @animal = Animal.new(params[:animal])

    if @animal.save
      redirect_to @animal
    else
      render action: :new
    end
  end

  def new
    @animal = Animal.new
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    params.permit!

    @animal = Animal.find(params[:id])

    if @animal.update(params[:animal])
      redirect_to @animal
    else
      render action: :edit
    end
  end
end
