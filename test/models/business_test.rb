# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  detail     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  website    :string(255)
#

require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
