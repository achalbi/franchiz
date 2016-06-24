class CreateSurveyItemTemplates < ActiveRecord::Migration
  def change
    create_table :survey_item_templates do |t|
      t.string :Question_title
      t.text :description
      t.references :SurveyTemplate, index: true, foreign_key: true
      t.references :SurveyItemCategory, index: true, foreign_key: true
      t.references :survey_item_templatable, polymorphic: true, 
        index: {:name => "survey_item_templatable_index"}, unique: true
      t.timestamps null: false
    end
  end
end
