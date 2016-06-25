# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string
#  lname           :string
#  email           :string
#  mobile          :string
#  created_at      :datetime
#  updated_at      :datetime
#  salutation      :string
#  password        :string
#  password_digest :text
#  business_id     :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
