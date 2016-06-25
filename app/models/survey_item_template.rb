# == Schema Information
#
# Table name: survey_item_templates
#
#  id                      :integer          not null, primary key
#  question_title          :string
#  description             :text
#  survey_template_id      :integer
#  survey_item_category_id :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class SurveyItemTemplate < ActiveRecord::Base
  has_and_belongs_to_many :survey_data_types
  belongs_to :survey_template
  belongs_to :survey_item_category_template

  amoeba do
    enable
  end
end
