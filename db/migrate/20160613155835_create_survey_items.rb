class CreateSurveyItems < ActiveRecord::Migration
  def change
    create_table :survey_items do |t|
      t.references :survey_question, index: true, foreign_key: true
      t.references :survey_user_answer, index: true, foreign_key: true
      t.references :survey_biz_user_answer, index: true, foreign_key: true
      t.references :inquiry, index: true, foreign_key: true
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
