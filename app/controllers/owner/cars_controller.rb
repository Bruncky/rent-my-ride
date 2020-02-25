class Owner::CarsController < ApplicationController
  def index
    @cars = current_user.cars
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to owner_cars_path
  end
end

