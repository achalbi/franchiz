json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :token, :business_id, :user_id
  json.url inquiry_url(inquiry, format: :json)
end
