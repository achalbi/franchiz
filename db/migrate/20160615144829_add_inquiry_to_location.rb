class AddInquiryToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :inquiry, index: true, foreign_key: true
  end
end
