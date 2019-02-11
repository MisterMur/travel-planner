# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CLIMATE = ['TROPICAL','DRY','TEMPERATE','CONTINENTAL','POLAR']
CS.get.each do |country_code,country_name|
  CS.states(country_code).each do |city_code,city|
    CS.cities(city_code).each do |city_name|

      Destination.create(country:country_name,city:city_name,climate:CLIMATE.sample)
      # byebug
    end
end
  # puts 'key' +key
  # puts 'value ' +value
  # byebug
  # Destination.create(country:value , city: )
end
