# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :string
#  name       :string
#  place_id   :string
#  city       :string
#  country    :string
#  id_loc     :string
#  pincode    :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  inquiry_id :integer
#  state      :string
#

class Location < ActiveRecord::Base
	belongs_to :inquiry

	validates_presence_of :address
end
