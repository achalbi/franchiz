json.array!(@survey_templates) do |survey_template|
  json.extract! survey_template, :id, :title, :description, :surveyable_id, :surveyable_type
  json.url survey_template_url(survey_template, format: :json)
end
