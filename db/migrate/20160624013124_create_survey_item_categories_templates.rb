class CreateSurveyItemCategoriesTemplates < ActiveRecord::Migration
  def change
    create_table :survey_item_categories_templates, :id => false do |t|
      t.references :survey_item_category
      t.references :survey_item_template
    end

    add_index :survey_item_categories_templates, [:survey_item_category_id, :survey_item_template_id],
      name: "survey_item_categories_templates_index",
      unique: true
  end
end
