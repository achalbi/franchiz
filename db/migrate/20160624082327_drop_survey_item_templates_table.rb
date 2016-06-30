class DropSurveyItemTemplatesTable < ActiveRecord::Migration
  def change
  	drop_table :survey_item_templates
  end
end
