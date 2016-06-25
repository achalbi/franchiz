# == Schema Information
#
# Table name: survey_questions
#
#  id          :integer          not null, primary key
#  title       :string
#  business_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  global      :boolean
#

require 'test_helper'

class SurveyQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
