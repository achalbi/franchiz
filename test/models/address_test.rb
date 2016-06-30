# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  doorno     :string
#  street     :string
#  city       :string
#  state      :string
#  country    :string
#  pincode    :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  line1      :text
#  line2      :text
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
