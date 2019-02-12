class ActivitiesController < ApplicationController

  def index
    # byebug
    #using params that's passed through
    #we fetch from API the 10 activities
    #we'll create 10 activities
    #then we will put them into @activities variable
    #on view page, will render @activities
    @search = params[:search]
    @destination = params[:destination_id]

    spots = Activity.get_spots(@search, @destination)
    Activity.create_by_api_connection(spots, @destination, @search)
    @activities = Activity.select_by_search_and_destination(@search, @destination)

  end

  def show
    find_activity
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end



end #end of ActivitiesController
