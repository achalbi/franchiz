json.array!(@biz_users) do |biz_user|
  json.extract! biz_user, :id, :fname, :lname, :email, :mobile, :salutation, :password, :business_id
  json.url biz_user_url(biz_user, format: :json)
end
