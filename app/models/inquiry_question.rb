class InquiryQuestion < ActiveRecord::Base
  belongs_to :business
  has_many :inquiry_answers
  
  accepts_nested_attributes_for :inquiry_answers
  
  validates_presence_of :title
end
