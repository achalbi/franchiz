class AddLineToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :line1, :text
    add_column :addresses, :line2, :text
  end
end
