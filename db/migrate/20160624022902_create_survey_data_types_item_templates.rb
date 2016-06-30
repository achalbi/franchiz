class CreateSurveyDataTypesItemTemplates < ActiveRecord::Migration
  def change
    create_table :survey_data_types_item_templates, :id => false do |t|
      t.references :survey_data_type
      t.references :survey_item_template
    end

    add_index :survey_data_types_item_templates, [:survey_data_type_id, :survey_item_template_id],
      name: "survey_data_types_item_templates_index",
      unique: true
  end
end
