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

class Address < ActiveRecord::Base

    belongs_to :user

    validates_presence_of :line1
    validates_presence_of :city
    validates_presence_of :state
    validates_presence_of :country
    validates_presence_of :pincode

    def to_s
       #"+self.line2+", "+self.city+", "+self.state+", "+self.country+", "+  pincode
    end
end
