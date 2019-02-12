class Activity < ApplicationRecord
  belongs_to :destination 
  has_many :trip_activities
  has_many :trips, through: :trip_activities
  # before_action :connect_google_api


  def location
    #check trip association --> there's no relationship yet
    self.trip.to_s

  end
  def populate_data
  end

  def get_photo_url(spot)
    #maxwidth in url changes photo size
    ref = spot.photos.first.photo_reference
    "https://maps.googleapis.com/maps/api/place/photo?maxwidth=200&photoreference=#{ref}&key=AIzaSyBcF7WmTnqaJVXqW1u4Z2rhHEjOeiaNRtg"
  end

  def connect_google_api
    @client = GooglePlaces::Client.new("AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8")
  end

  def get_spot(type)
    @client.spots_by_query("#{type} near #{self.location}")
  end


  def create_by_api_connection

  end


end #end of Activity class
