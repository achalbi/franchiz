# == Schema Information
#
# Table name: survey_item_templates
#
#  id                               :integer          not null, primary key
#  question_title                   :string
#  description                      :text
#  survey_template_id               :integer
#  survey_item_category_template_id :integer
#

require 'test_helper'

class SurveyItemTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
