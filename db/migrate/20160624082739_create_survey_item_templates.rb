class CreateSurveyItemTemplates < ActiveRecord::Migration
  def change
    create_table :survey_item_templates do |t|
      t.string :question_title
      t.text :description
      t.references :survey_template, index: true, foreign_key: true
      t.references :survey_item_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
