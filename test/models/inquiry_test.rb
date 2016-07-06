# == Schema Information
#
# Table name: inquiries
#
#  id             :integer          not null, primary key
#  token          :string(255)
#  business_id    :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  status         :string(255)
#  workflow_state :string(255)
#

require 'test_helper'

class InquiryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
