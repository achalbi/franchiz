class AddStatusToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :status, :string
  end
end
