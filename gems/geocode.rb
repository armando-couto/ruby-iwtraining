
require 'Geocode'

g = Geocode.new_geocoder :google, {:google_api_key => "AIzaSyBekRrd5EILxyqbiijDA5xlmij8BwW-Rdo"}
result1 = g.geocode "1600 Amphitheatre Parkway, Mountain View, CA"
result2 = g.reverse_geocode "37.421759,-122.08437"