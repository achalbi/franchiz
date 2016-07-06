# == Schema Information
#
# Table name: survey_item_templates
#
#  id                               :integer          not null, primary key
#  question_title                   :string
#  description                      :text
#  survey_template_id               :integer
#  survey_item_category_template_id :integer
#

class SurveyItemTemplate < ActiveRecord::Base
  has_and_belongs_to_many :survey_data_types, join_table: :srvy_data_types_item_templates
#  belongs_to :survey_template
  belongs_to :survey_item_category_template, class_name: "SurveyItemCategoryTemplate", foreign_key: "srvy_item_category_template_id"

  validates_presence_of :question_title

  amoeba do
    enable
  end
end
