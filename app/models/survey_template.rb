class SurveyTemplate < ActiveRecord::Base
  belongs_to :surveyable, polymorphic: true
  has_many :survey_item_templates
end
