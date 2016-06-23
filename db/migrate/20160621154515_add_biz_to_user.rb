class AddBizToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :business, :refeences
    add_column :users, :password_digest, :text
  end
end
