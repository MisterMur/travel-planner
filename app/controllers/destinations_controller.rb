class DestinationsController < ApplicationController

  def index
    if params[:destination] != nil
      @country = Country.find_by(id: params[:destination][:country_id])
      @destinations = Destination.view_cities(params[:destination][:country_id]).sort_by{|d| d.state_city}
    end
  end

  def show
    # byebug
    if !!params[:destination]
      @destination = Destination.find(params[:destination][:id])
    else
      @destination = Destination.find(params[:id])
    end

    restaurants = Activity.get_spots("restaurants", @destination.id)
    Activity.create_by_api_connection(restaurants, @destination.id, "restaurants")
    @restaurants = Activity.select_by_search_and_destination("restaurants", @destination.id)

    bars = Activity.get_spots("bars", @destination.id)
    Activity.create_by_api_connection(bars, @destination.id, "bars")
    @bars = Activity.select_by_search_and_destination("bars", @destination.id)

    museums = Activity.get_spots("museums", @destination.id)
    Activity.create_by_api_connection(museums, @destination.id, "museums")
    @museums = Activity.select_by_search_and_destination("museums", @destination.id)
  end


end
