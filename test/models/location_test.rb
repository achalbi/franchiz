# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  name       :string(255)
#  place_id   :string(255)
#  city       :string(255)
#  country    :string(255)
#  id_loc     :string(255)
#  pincode    :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  inquiry_id :integer
#  state      :string(255)
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
