class SurveyItemCategory < ActiveRecord::Base
  has_and_belongs_to_many :survey_item_templates
  belongs_to :categorisable, polymorphic: true
  has_many :survey_item_templates
end
