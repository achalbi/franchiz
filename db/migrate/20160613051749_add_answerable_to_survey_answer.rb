class AddAnswerableToSurveyAnswer < ActiveRecord::Migration
  def change
      add_index :survey_answers, [:survey_answerable_id, :survey_answerable_type], :unique => true, :name => "index_survey_answers_on_sa_type_and_sa_id"
  end
end
