class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :trip_activities
  has_many :activities, through: :trip_activities

  # validates :start_date, :destination_id, presence: true

  def to_s
    # byebug
    self.destination.city + ", " + self.destination.country.name
  end




end #end of Trip
