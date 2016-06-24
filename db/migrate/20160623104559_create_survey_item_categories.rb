class CreateSurveyItemCategories < ActiveRecord::Migration
  def change
    create_table :survey_item_categories do |t|
      t.string :title
      t.references :categorisable, polymorphic: true, index: {:name => "survey_item_categories_categorisable_id_index"},
      unique: true

      t.timestamps null: false

    end
  end
end
