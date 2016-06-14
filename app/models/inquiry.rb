class Inquiry < ActiveRecord::Base
  belongs_to :business
  belongs_to :user
  has_many :inquiry_answers
  has_one :survey
  
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :inquiry_answers
  
      
    validates_presence_of :user
    validates_associated :user
end
