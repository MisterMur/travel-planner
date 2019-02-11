class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :actvities

  def to_s
    self.destination.city + ", " + self.destination.country
  end


end #end of Trip
