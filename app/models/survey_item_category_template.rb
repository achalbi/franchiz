class SurveyItemCategoryTemplate < ActiveRecord::Base
  belongs_to :survey_template
  has_many :survey_item_templates
end
