class System < ActiveRecord::Base
  has_many :survey_templates, as: :surveyable
  has_many :survey_item_categories, as: :categorisable
end
