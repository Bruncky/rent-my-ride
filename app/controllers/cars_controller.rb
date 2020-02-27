class CarsController < ApplicationController
  before_action :authenticate_user!, only: %i[create]

  before_action :set_car, only: [:show, :destroy]

  def index
    if params[:query].present? && params[:start_date].preset? && params[:end_date]
      sql_query = "cars.location ILIKE :query AND bookings.start_date > :end_date AND bookings.end_date < :start_date"
      @cars = Car.joins(:booking).where(sql_query, query: "%#{params[:query]}%", start_date: "#{params[:start_date]}", end_date: "#{params[:end_date]}").geocoded
      redirect_to root_path, notice: "No matches found" if @cars[0].nil?
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
    params.require(:car).permit(:model, :description, :horsepower, :location, :price, :thumbnail, photos: [])
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
