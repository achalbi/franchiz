class AddGlobalToSurveyQuestion < ActiveRecord::Migration
  def change
    add_column :survey_questions, :global, :boolean
  end
end
