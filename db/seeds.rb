# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# CLIMATE = ['TROPICAL','DRY','TEMPERATE','CONTINENTAL','POLAR']

# CS.get.each do |country_code,country_name|
#   CS.states(country_code).each do |city_code,city|
#     CS.cities(city_code).each do |city_name|
#       Destination.create(country:country_name,city:city_name)
#     end
#   end
# end


# @client = GooglePlaces::Client.new("AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8")
# byebug

# User.create(first_name: "linya", last_name: "hu", birthdate: Date.parse('1994-06-25'), email: "linya.hu@flatironschool.com", username: "lh62594", password: "1234")
# User.create(first_name: "brian", last_name: "murillo", birthdate: Date.parse('1993-08-18'), email: "brian.murillo@flatironschool.com", username: "mistermur", password: "5678")

Trip.create(user_id: 2, destination_id: 256, mode: "flight", start_date: Date.parse('2019-07-08'), end_date: Date.parse('2019-07-25'))
