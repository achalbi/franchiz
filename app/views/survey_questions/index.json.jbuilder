json.array!(@survey_questions) do |survey_question|
  json.extract! survey_question, :id, :title, :business_id
  json.url survey_question_url(survey_question, format: :json)
end
