class Country < ApplicationRecord
  has_many :destinations
  belongs_to :user

end #end of Country class
