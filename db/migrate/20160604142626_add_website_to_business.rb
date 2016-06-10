class AddWebsiteToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :website, :string
    add_index :businesses, :website
  end
end
