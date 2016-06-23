# == Schema Information
#
# Table name: business_inquiry_basics
#
#  id         :integer          not null, primary key
#  req_token  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BusinessInquiry::InquiryBasic < ActiveRecord::Base
end
