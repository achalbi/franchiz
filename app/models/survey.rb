# == Schema Information
#
# Table name: surveys
#
#  id         :integer          not null, primary key
#  inquiry_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Survey < ActiveRecord::Base
  belongs_to :inquiry
  
  has_many :survey_item_categories  
  accepts_nested_attributes_for :survey_item_categories
end
