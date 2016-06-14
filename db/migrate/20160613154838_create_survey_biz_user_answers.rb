class CreateSurveyBizUserAnswers < ActiveRecord::Migration
  def change
    create_table :survey_biz_user_answers do |t|
      t.text :answer
      t.references :survey_question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
