class AddPasswordDigestToBizUser < ActiveRecord::Migration
  def change
    add_column :biz_users, :password_digest, :text
  end
end
