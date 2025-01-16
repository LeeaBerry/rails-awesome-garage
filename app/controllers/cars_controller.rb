class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
  end

  # def new
  #   @car = Car.find(params[:id])
  #   @review = Review.new
  # end
end
