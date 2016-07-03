# == Schema Information
#
# Table name: survey_item_category_templates
#
#  id                 :integer          not null, primary key
#  title              :string
#  survey_template_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class SurveyItemCategoryTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
