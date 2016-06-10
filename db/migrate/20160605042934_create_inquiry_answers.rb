class CreateInquiryAnswers < ActiveRecord::Migration
  def change
    create_table :inquiry_answers do |t|
      t.string :answer
      t.references :inquiry_question, index: true, foreign_key: true
      t.references :inquiry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
