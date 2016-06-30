json.array!(@survey_biz_user_answers) do |survey_biz_user_answer|
  json.extract! survey_biz_user_answer, :id
  json.url survey_biz_user_answer_url(survey_biz_user_answer, format: :json)
end
