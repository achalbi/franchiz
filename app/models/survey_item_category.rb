# == Schema Information
#
# Table name: survey_item_categories
#
#  id                 :integer          not null, primary key
#  title              :string
#  survey_template_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class SurveyItemCategory < ActiveRecord::Base
  belongs_to :survey
  has_many :survey_items
 
  accepts_nested_attributes_for :survey_items
end
