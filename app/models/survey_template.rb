# == Schema Information
#
# Table name: survey_templates
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  surveyable_id   :integer
#  surveyable_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SurveyTemplate < ActiveRecord::Base
  belongs_to :surveyable, polymorphic: true
  has_many :survey_item_templates
  has_many :survey_item_category_templates

  amoeba do
    enable
  end
end
