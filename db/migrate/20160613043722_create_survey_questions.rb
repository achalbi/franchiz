class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.string :title
      t.references :business, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
