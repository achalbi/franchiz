class CreateInquiryQuestions < ActiveRecord::Migration
  def change
    create_table :inquiry_questions do |t|
      t.string :title
      t.references :business, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
