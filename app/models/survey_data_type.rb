class SurveyDataType < ActiveRecord::Base
  has_and_belongs_to_many :survey_item_templates
end
