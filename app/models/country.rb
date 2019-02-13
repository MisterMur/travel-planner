class Country < ApplicationRecord
  has_many :states
  has_many :trips
  has_many :users, through: :trips

end #end of Country class
