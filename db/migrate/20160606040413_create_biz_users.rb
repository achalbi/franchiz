class CreateBizUsers < ActiveRecord::Migration
  def change
    create_table :biz_users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :mobile
      t.string :salutation
      t.string :password
      t.references :business, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
