class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]

  def new
    @trip = Trip.new
    @destination_cities = Destination.view_cities(params["country_name"])
  end

  def create
    byebug
    @trip = Trip.new(trip_params)
    if @trip.valid?
      @trip.save
      redirect_to @trip
    else
      render :new
    end
  end

  def show
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:user_id, :destination_id, :start_date, :end_date)
  end

end
