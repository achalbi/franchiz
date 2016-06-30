json.array!(@survey_data_types) do |survey_data_type|
  json.extract! survey_data_type, :id, :title
  json.url survey_data_type_url(survey_data_type, format: :json)
end
