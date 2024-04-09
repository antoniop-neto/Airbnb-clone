class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing), notice: 'Your place was successfully added.'
    else
      render :new, :unprocessable_entity
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :price, :location, :availability, :guest, photos: [])
  end
end
