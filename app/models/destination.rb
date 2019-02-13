class Destination < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  has_many :activities
  belongs_to :country


  def self.view_countries
    Destination.all.pluck(:country).uniq
  end

  def self.view_cities(country_id) #this should return the cities of a country
    self.all.select do |destination|
      destination.country_id == country_id.to_i
    end
  end

  def country_name
    self.country.name
  end

  def to_s
    self.city + ", " + self.country_name
  end




end #end of Destination class
