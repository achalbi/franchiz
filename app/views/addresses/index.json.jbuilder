json.array!(@addresses) do |address|
  json.extract! address, :id, :doorno, :street, :city, :state, :country, :pincode, :latitude, :longitude, :user_id
  json.url address_url(address, format: :json)
end
