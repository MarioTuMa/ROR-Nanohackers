class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def create
    params.permit!

    @visit = Visit.new(params[:visit])

    if @visit.save
      redirect_to @visit
    else
      render action: :new
    end
  end

  def new
    @visit = Visit.new
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    params.permit!

    @visit = Visit.find(params[:id])

    if @visit.update(params[:visit])
      redirect_to @visit
    else
      render action: :edit
    end
  end
end
