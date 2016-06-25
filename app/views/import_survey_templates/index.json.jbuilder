json.array!(@import_survey_templates) do |import_survey_template|
  json.extract! import_survey_template, :id
  json.url import_survey_template_url(import_survey_template, format: :json)
end
