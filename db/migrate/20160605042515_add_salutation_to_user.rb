class AddSalutationToUser < ActiveRecord::Migration
  def change
    add_column :users, :salutation, :string
  end
end
