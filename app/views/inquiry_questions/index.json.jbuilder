json.array!(@inquiry_questions) do |inquiry_question|
  json.extract! inquiry_question, :id, :title, :business_id
  json.url inquiry_question_url(inquiry_question, format: :json)
end
