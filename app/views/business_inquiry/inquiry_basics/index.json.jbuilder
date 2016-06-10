json.array!(@business_inquiry_basics) do |business_inquiry_basic|
  json.extract! business_inquiry_basic, :id, :req_token
  json.url business_inquiry_basic_url(business_inquiry_basic, format: :json)
end
