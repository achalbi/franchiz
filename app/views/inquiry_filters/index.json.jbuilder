json.array!(@inquiry_filters) do |inquiry_filter|
  json.extract! inquiry_filter, :id
  json.url inquiry_filter_url(inquiry_filter, format: :json)
end
