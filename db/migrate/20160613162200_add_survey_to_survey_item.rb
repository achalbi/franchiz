class AddSurveyToSurveyItem < ActiveRecord::Migration
  def change
    add_reference :survey_items, :survey, index: true, foreign_key: true
  end
end
