class AddTitleToSurveyItems < ActiveRecord::Migration
  def change
    add_column :survey_items, :title, :string
  end
end
