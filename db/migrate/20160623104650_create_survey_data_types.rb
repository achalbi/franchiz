class CreateSurveyDataTypes < ActiveRecord::Migration
  def change
    create_table :survey_data_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end