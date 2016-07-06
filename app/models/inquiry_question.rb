# == Schema Information
#
# Table name: inquiry_questions
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  business_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class InquiryQuestion < ActiveRecord::Base
  belongs_to :business
  has_many :inquiry_answers
  
  accepts_nested_attributes_for :inquiry_answers
  
  validates_presence_of :title
end
