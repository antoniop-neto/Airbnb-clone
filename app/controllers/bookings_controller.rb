class BookingsController < ApplicationController
  before_action :set_listing, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.user = current_user
    @booking.listing = @listing
    if @booking.save
      redirect_to bookings_path(@booking), notice: 'successfully booked'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guest)
  end
end
