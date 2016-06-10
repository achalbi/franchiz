class CreateBusinessInquiryBasics < ActiveRecord::Migration
  def change
    create_table :business_inquiry_basics do |t|
      t.string :req_token

      t.timestamps null: false
    end
  end
end
