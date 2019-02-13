class ActivitiesController < ApplicationController

  def index
    #get param that are passed through
    #have it render on the page so it can be carried across
    # byebug
    @search = params[:search]
    find_trip

    #fetch from API for the activity spots
    spots = Activity.get_spots(@search, @trip.destination_id)

    #create the activities if they don't already exist (by name)
    Activity.create_by_api_connection(spots, @trip.destination_id, @search)

    #get the activities that match the search and destination
    @activities = Activity.select_by_search_and_destination(@search, @trip.destination_id)
  end

  def show
    find_activity
    find_trip
  end

  def add_to_trip
    TripActivity.create(trip_id: params[:trip_id], activity_id: params[:activity_id])
    find_trip
    redirect_to trip_path(@trip)
  end

  def destroy
    find_trip
    @trip_activity = TripActivity.select_trip_activity(trip_id: params[:trip_id], activity_id: params[:id])
    @trip_activity.destroy
    redirect_to trip_path(@trip)
  end

  private

  def find_activity
    @activity = Activity.find_by(id: params[:id])
  end

  def find_trip
    @trip = Trip.find_by(id: params[:trip_id])
  end



end #end of ActivitiesController
