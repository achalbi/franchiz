json.array!(@survey_item_templates) do |survey_item_template|
  json.extract! survey_item_template, :id, :Question_title, :description, :SurveyTemplate_id, :SurveyItemCategory_id, :survey_item_templatable_id, :survey_item_templatable_type
  json.url survey_item_template_url(survey_item_template, format: :json)
end
