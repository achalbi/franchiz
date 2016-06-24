class SurveyItemTemplate < ActiveRecord::Base
  has_and_belongs_to_many :survey_data_types
  has_and_belongs_to_many :survey_item_data_types
  has_and_belongs_to_many :survey_item_categories
  belongs_to :SurveyTemplate
  belongs_to :SurveyItemCategory
  belongs_to :survey_item_templatable, polymorphic: true
end
