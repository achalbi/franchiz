# == Schema Information
#
# Table name: survey_item_categories
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  survey_template_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  survey_id          :integer
#

require 'test_helper'

class SurveyItemCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
