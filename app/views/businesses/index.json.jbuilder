json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :detail
  json.url business_url(business, format: :json)
end
