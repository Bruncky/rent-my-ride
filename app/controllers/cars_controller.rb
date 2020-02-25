class CarsController < ApplicationController
  before_action :authenticate_user!, only: %i[create]

  before_action :set_car, only: [:show, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).params(:model, :description, :horsepower, :attached_pics, :location, :price)
  end
end
