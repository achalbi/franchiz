# == Schema Information
#
# Table name: inquiry_answers
#
#  id                  :integer          not null, primary key
#  answer              :string
#  inquiry_question_id :integer
#  inquiry_id          :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class InquiryAnswer < ActiveRecord::Base
  belongs_to :inquiry_question
  belongs_to :inquiry

  accepts_nested_attributes_for :inquiry_question
end
