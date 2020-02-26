class CarsController < ApplicationController
  before_action :authenticate_user!, only: %i[create]

  before_action :set_car, only: [:show, :destroy]

  def index
    if params[:query].present?
      sql_query = "location LIKE :query"
      @cars = Car.where(sql_query, query: "%#{params[:query]}%").geocoded
      markers
    else
      @cars = Car.geocoded
      markers
    end
  end

  def show
    @marker = [{
              lat: @car.latitude,
              lng: @car.longitude,
              infoWindow: render_to_string(partial: "info_window", locals: { car: @car })
              }]
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
    params.require(:car).permit(:model, :description, :horsepower, :location, :price, :photo)
  end

  def markers
    @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car })
      }
    end
  end
end
