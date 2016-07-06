# == Schema Information
#
# Table name: biz_users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  email           :string(255)
#  mobile          :string(255)
#  salutation      :string(255)
#  password        :string(255)
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

require 'test_helper'

class BizUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
