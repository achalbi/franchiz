class DropSurveyItemCategoriesTable < ActiveRecord::Migration
  def change
  	drop_table :survey_item_categories
  end
end
