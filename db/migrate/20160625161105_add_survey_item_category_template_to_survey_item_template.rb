class AddSurveyItemCategoryTemplateToSurveyItemTemplate < ActiveRecord::Migration
  def change
    add_reference :survey_item_templates, :survey_item_category_template, 
    	index: {name: "survey_item_template_category_template_index"}, foreign_key: true
  end
end
