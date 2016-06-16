class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :name
      t.string :place_id
      t.string :city
      t.string :country
      t.string :id_loc
      t.string :pincode
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
