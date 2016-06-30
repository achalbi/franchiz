class CreateSurveyItemTemplate < ActiveRecord::Migration
  def change
    create_table :survey_item_templates do |t|
      t.string :question_title
      t.text :description
      t.references :survey_template, index: true, foreign_key: true
      t.references :survey_item_category_template, index: {name: "SICT_SIT_index"}, foreign_key: true
    end
  end
end
