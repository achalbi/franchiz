class AddSurveyItemCategoryToSurveyItem < ActiveRecord::Migration
  def change
    add_reference :survey_items, :survey_item_category, index: true, foreign_key: true
  end
end
