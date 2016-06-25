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

require 'test_helper'

class InquiryAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
