class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :mobile
      t.datetime :created_at
      t.datetime :updated_at
      t.string :salutation
      t.string :password
      t.text :password_digest
      t.references :business, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
