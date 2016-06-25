json.array!(@survey_item_categories) do |survey_item_category|
  json.extract! survey_item_category, :id, :title, :survey_template_id
  json.url survey_item_category_url(survey_item_category, format: :json)
end
