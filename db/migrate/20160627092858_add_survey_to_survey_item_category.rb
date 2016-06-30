class AddSurveyToSurveyItemCategory < ActiveRecord::Migration
  def change
    add_reference :survey_item_categories, :survey, index: true, foreign_key: true
  end
end
