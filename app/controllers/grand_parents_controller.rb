class GrandParentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index , :show]
  before_action :set_grand_parent, only: [:show, :edit, :update, :destroy]

  def index
    @query = params[:query]
    if @query.present?
      @grand_parents = GrandParent.search_by_first_name_city_hobby(@query).order(created_at: :desc)
    else
      @grand_parents = GrandParent.geocoded.order(created_at: :desc) # returns flats with coordinates
    end
    @markers = @grand_parents.map do |grand_parent|
      {
        lat: grand_parent.latitude,
        lng: grand_parent.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { grand_parent: grand_parent })
      }
    end
  end

  def show
    @booking = Booking.new
    @grand_parent = GrandParent.find(params[:id])
    @bookings       = @grand_parent.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.date_start,
        to:   booking.date_end
      }
    end
  end

  def new
    @grand_parent = GrandParent.new
  end

  def create
    @grand_parent = GrandParent.new(grand_parent_params)
    @grand_parent.user = current_user

    if @grand_parent.save
      redirect_to grand_parent_path(@grand_parent)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @grand_parent.update(grand_parent_params)
    if @grand_parent.save
      redirect_to grand_parent_path(@grand_parent)
    else
      render :edit
    end
  end

  def destroy
    @grand_parent.destroy
    redirect_to grand_parents_path
  end

  private

  def set_grand_parent
    @grand_parent = GrandParent.find(params[:id])
  end

  def grand_parent_params
    params.require(:grand_parent).permit(:first_name, :last_name, :description, :price, :age, :hobby, :city, :photos)
  end
end
