class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, index: {name: "comments_commentable_index"}
      t.references :userable, polymorphic: true, index: {name: "comments_userable_index"}

      t.timestamps null: false
    end
  end
end
