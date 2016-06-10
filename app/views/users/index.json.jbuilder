json.array!(@users) do |user|
  json.extract! user, :id, :salutation, :fname, :lname, :email, :mobile
  json.url user_url(user, format: :json)
end
