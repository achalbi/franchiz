class Survey < ActiveRecord::Base
  belongs_to :inquiry
  
  has_many :survey_items
  
  accepts_nested_attributes_for :survey_items
  
end
