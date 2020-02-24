class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def new
    @booking = Booking.new
  end

  def create
    @booking.new(booking_params)
    @booking.car = set_car
    @booking.user = set_user
    if @booking.save
      redirect_to booking_path
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
      bookings.require(:booking).permit(:start)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
