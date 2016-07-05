# == Schema Information
#
# Table name: survey_data_types
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SurveyDataType < ActiveRecord::Base
  has_and_belongs_to_many :survey_items
  has_and_belongs_to_many :survey_item_templates, join_table: :srvy_data_types_item_templates 
end
