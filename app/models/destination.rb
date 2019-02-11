class Destination < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  has_many :destination_activity_types
  has_many :activity_types, through: :destination_activity_types


end
