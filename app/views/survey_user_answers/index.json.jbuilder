json.array!(@survey_user_answers) do |survey_user_answer|
  json.extract! survey_user_answer, :id
  json.url survey_user_answer_url(survey_user_answer, format: :json)
end
