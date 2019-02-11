class User < ApplicationRecord
  has_many :trips
  has_many :destinations, through: :trips

  def view_destinations
    self.destinations.map{|destination| destination.name}
  end

end
