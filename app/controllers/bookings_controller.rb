class BookingsController < ApplicationController
  before_action :authenticate_user!, only: %i[create]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def new
    @car = set_car
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = set_car
    @booking.user = current_user
    if @booking.save
      sleep(8)
      redirect_to user_path(@booking.user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
      params.require(:booking).permit(:start_date, :end_date)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
