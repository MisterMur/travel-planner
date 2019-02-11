class ActivityType < ApplicationRecord
  has_many :activities
  has_many :destination_activity_types

end
