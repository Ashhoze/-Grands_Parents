class BookingsController < ApplicationController
  # def new
  #   @grand_parent = GrandParent.find(params[:grand_parent_id])
  #   @booking = Booking.new
  # end

  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @grand_parent = GrandParent.find(params[:grand_parent_id])
    @booking = Booking.new(booking_params)
    @booking.grand_parent = @grand_parent
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render '/'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to grand_parent_path(@booking.grand_parent)
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end

