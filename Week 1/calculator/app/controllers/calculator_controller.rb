class CalculatorController < ApplicationController

  def show
  end
  def sum
    if(params[:operation]=="+")
      @sum=params[:x].to_i + params[:y].to_i
    end
    if(params[:operation]=="-")
      @sum=params[:x].to_i - params[:y].to_i
    end
    if(params[:operation]=="x")
      @sum=params[:x].to_i * params[:y].to_i
    end
    if(params[:operation]=="/")
      @sum=params[:x].to_i / params[:y].to_i
    end
    if(params[:operation]=="**")
      @sum=params[:x].to_i ** params[:y].to_i
    end
  end
end
