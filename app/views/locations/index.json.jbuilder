json.array!(@locations) do |location|
  json.extract! location, :id, :address, :name, :place_id, :city, :country, :id_loc, :pincode, :latitude, :longitude
  json.url location_url(location, format: :json)
end
