class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :doorno
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
