json.array!(@survey_items) do |survey_item|
  json.extract! survey_item, :id, :survey_question_id, :survey_user_answer_id, :survey_biz_user_answer_id, :inquiry_id, :visible
  json.url survey_item_url(survey_item, format: :json)
end
