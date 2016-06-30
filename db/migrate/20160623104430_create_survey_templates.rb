class CreateSurveyTemplates < ActiveRecord::Migration
  def change
    create_table :survey_templates do |t|
      t.string :title
      t.text :description
      t.references :surveyable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
