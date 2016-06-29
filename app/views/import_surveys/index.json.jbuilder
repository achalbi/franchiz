json.array!(@import_surveys) do |import_survey|
  json.extract! import_survey, :id
  json.url import_survey_url(import_survey, format: :json)
end
