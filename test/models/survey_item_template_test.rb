# == Schema Information
#
# Table name: survey_item_templates
#
#  id                             :integer          not null, primary key
#  question_title                 :string(255)
#  description                    :text
#  survey_template_id             :integer
#  srvy_item_category_template_id :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

require 'test_helper'

class SurveyItemTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
