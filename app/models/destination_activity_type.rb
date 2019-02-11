class DestinationActivityType < ApplicationRecord
  belongs_to :destination
  belongs_to :activity_type
end
