class BookingsController < ApplicationController
    def new
    @grand_parent = GrandParent.find(params[:grand_parent_id])
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    @grand_parent = GrandParent.find(params[:grand_parent_id])
    @booking.grand_parent = @grand_parent
    if @booking.save
      redirect_to grand_parent_path(@booking.grand_parent)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to grand_parent_path(@booking.grand_parent)
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :review, :user_id, :grand_parent_id, :total_price)
  end
end
