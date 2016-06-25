class CreateSurveyItemCategoryTemplates < ActiveRecord::Migration
  def change
    create_table :survey_item_category_templates do |t|
      t.string :title
      t.references :survey_template, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
