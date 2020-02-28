class CarsController < ApplicationController
  before_action :authenticate_user!, only: %i[create]

  before_action :set_car, only: [:show, :destroy]

  def index
    @cars = []
    if params[:query].present? && params[:start_date].present? && params[:end_date].present?
      all_params
      markers
    elsif params[:query].present? && params[:start_date] == ""
      only_search
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
      redirect_to owner_cars_path
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
        infoWindow: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('custom_marker.png')
      }
    end
    @markers << user_marker
  end

  def user_marker
    location = request.location.coordinates

    user_marker = {
      lat: location[0],
      lng: location[1],
      image_url: helpers.asset_url('custom_marker_blue.png')
    }
  end

  def all_params
    sql_query = "cars.location ILIKE :query"
      @query_cars = Car.where(sql_query, query: "%#{params[:query]}%")
      Car.all.each do |car|
        if car.bookings.empty?
          @cars << car
        else
          car.bookings.each do |booking|
            @cars << car if booking.start_date > params[:end_date] || booking.end_date < params[:start_date]
          end
        end
      end
  end

  def only_search
    sql_query = "location ILIKE :query"
    @cars = Car.where(sql_query, query: "%#{params[:query]}%")
  end
end
