json.array!(@inquiry_answers) do |inquiry_answer|
  json.extract! inquiry_answer, :id, :answer, :inquiry_question_id, :inquiry_id
  json.url inquiry_answer_url(inquiry_answer, format: :json)
end
