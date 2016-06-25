# == Schema Information
#
# Table name: survey_user_answers
#
#  id                 :integer          not null, primary key
#  answer             :text
#  survey_question_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class SurveyUserAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
