class TripsController < ApplicationController

  def new
    @trip = Trip.new
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
    @trip = User.find(params[:id])
  end

end
