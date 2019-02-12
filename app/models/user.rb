class User < ApplicationRecord
  has_secure_password
  
  has_many :trips
  has_many :destinations, through: :trips

  validates :first_name, :last_name, :birthdate, :email, :username, :password, presence: true
  validates :email, :username, uniqueness: true
  validates :password, length: { in: 4..12 }

  def view_destinations
    self.destinations.map{|destination| destination.name}
  end

  def to_s
    self.first_name + " " + self.last_name
  end

end
