class CreateSurveyItemCategoryTemplates < ActiveRecord::Migration
  def change
    create_table :survey_item_category_templates do |t|
      t.string :title
      t.references :survey_template, index: {name: "sict_st_index"}, foreign_key: true

      t.timestamps null: false
    end
  end
end
