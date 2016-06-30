json.array!(@survey_item_templates) do |survey_item_template|
  json.extract! survey_item_template, :id, :question_title, :description, :survey_template_id, :survey_item_category_id
  json.url survey_item_template_url(survey_item_template, format: :json)
end
