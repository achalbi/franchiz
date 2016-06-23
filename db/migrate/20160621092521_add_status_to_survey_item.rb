class AddStatusToSurveyItem < ActiveRecord::Migration
  def change
    add_column :survey_items, :status, :string
  end
end
