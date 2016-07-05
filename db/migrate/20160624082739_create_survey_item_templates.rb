class CreateSurveyItemTemplates < ActiveRecord::Migration
  def change
    create_table :survey_item_templates do |t|
      t.string :question_title
      t.text :description
      t.references :survey_template, index: true, foreign_key: true
      t.references :srvy_item_category_template, references: :survey_item_category_templates, index: {name: "SICT_SIT_index"}

      t.timestamps null: false
    end
  end
end
