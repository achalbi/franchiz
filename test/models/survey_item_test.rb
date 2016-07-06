# == Schema Information
#
# Table name: survey_items
#
#  id                        :integer          not null, primary key
#  survey_question_id        :integer
#  survey_user_answer_id     :integer
#  survey_biz_user_answer_id :integer
#  inquiry_id                :integer
#  visible                   :boolean
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  survey_id                 :integer
#  status                    :string(255)
#  survey_item_category_id   :integer
#  title                     :string(255)
#

require 'test_helper'

class SurveyItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
