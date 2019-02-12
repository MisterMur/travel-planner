class Destination < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  has_many :destination_activity_types
  has_many :activity_types, through: :destination_activity_types

  def self.view_countries
    Destination.all.pluck(:country).uniq
  end

  def self.view_cities(country_name) #this should return the cities of a country
    if country_name == nil
      self.all.select do |destination|
        destination.country == country_name.titlecase
      end
    end
  end

 # @client = GooglePlaces::Client.new("AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8")
#
end
