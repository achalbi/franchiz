class CreateSurveyDataTypesItems < ActiveRecord::Migration
  def change
    create_table :survey_data_types_items, :id => false do |t|
      t.references :survey_data_type
      t.references :survey_item
    end

    add_index :survey_data_types_items, [:survey_data_type_id, :survey_item_id],
      name: "survey_data_types_items_index",
      unique: true
  end
end
