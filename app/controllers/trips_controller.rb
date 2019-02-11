class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @destination_cities = Destination.view_cities(params["country_name"])
  end

  def create
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

end
