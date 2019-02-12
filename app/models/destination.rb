class Destination < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  has_many :activities


  def self.view_countries
    Destination.all.pluck(:country).uniq
  end

  def self.view_cities(country_name) #this should return the cities of a country
    if country_name == nil
      []
    else
      self.all.select do |destination|
        destination.country == country_name.titlecase
      end
    end
  end

end #end of Destination class
