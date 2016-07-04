# == Schema Information
#
# Table name: survey_item_category_templates
#
#  id                 :integer          not null, primary key
#  title              :string
#  survey_template_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class SurveyItemCategoryTemplate < ActiveRecord::Base
  belongs_to :survey_template
  has_many :survey_item_templates, dependent: :destroy

  validates_presence_of :title

  amoeba do
    enable
  end
end
