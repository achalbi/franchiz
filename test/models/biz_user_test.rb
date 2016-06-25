# == Schema Information
#
# Table name: biz_users
#
#  id              :integer          not null, primary key
#  salutation      :string
#  fname           :string
#  lname           :string
#  email           :string
#  mobile          :string
#  password        :string
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
