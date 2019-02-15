class Country < ApplicationRecord
  has_many :states
  has_many :trips
  has_many :users, through: :trips

  def activity_choices
    ["Restaurants", "Bars", "Museums", "Historic Sites", "Beaches", "Things to do", "Shopping"].sort
  end

end #end of Country class
