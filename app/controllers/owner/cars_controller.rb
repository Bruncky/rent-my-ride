class Owner::CarsController < ApplicationController
  def index
    # @cars = Car.where(user: current_user)
    @cars = current_user.cars
  end
end
