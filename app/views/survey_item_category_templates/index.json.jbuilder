json.array!(@survey_item_category_templates) do |survey_item_category_template|
  json.extract! survey_item_category_template, :id, :title, :survey_template_id
  json.url survey_item_category_template_url(survey_item_category_template, format: :json)
end
