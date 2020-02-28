class Owner::CarsController < ApplicationController
  before_action :authenticate_user!, only: %i[edit update destroy]

  before_action :set_car, only: [:edit, :update, :destroy]

  def index
    @cars = current_user.cars
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to owner_cars_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to owner_cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :description, :horsepower, :location, :price, :thumbnail, photos: [])
  end
end

