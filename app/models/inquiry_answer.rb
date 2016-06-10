class InquiryAnswer < ActiveRecord::Base
  belongs_to :inquiry_question
  belongs_to :inquiry

  accepts_nested_attributes_for :inquiry_question
end
