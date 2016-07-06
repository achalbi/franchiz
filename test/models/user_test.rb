# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  email           :string(255)
#  mobile          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  salutation      :string(255)
#  password        :string(255)
#  password_digest :text
#  business_id     :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
