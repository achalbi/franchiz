class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
