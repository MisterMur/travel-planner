require 'google_places'
require 'byebug'
def search(q)
  @client = GooglePlaces::Client.new("AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8")
  @client.spots_by_query(q)
end
byebug
