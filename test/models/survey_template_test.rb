# == Schema Information
#
# Table name: survey_templates
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  surveyable_id   :integer
#  surveyable_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SurveyTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
