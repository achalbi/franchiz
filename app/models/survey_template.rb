# == Schema Information
#
# Table name: survey_templates
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  description     :text
#  surveyable_id   :integer
#  surveyable_type :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SurveyTemplate < ActiveRecord::Base
  belongs_to :surveyable, polymorphic: true
#  has_many :survey_item_templates
  has_many :survey_item_category_templates, dependent: :destroy

  validates_presence_of :title

  amoeba do
    enable

  end
end
