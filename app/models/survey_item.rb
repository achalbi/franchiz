# == Schema Information
#
# Table name: survey_items
#
#  id                        :integer          not null, primary key
#  survey_question_id        :integer
#  survey_user_answer_id     :integer
#  survey_biz_user_answer_id :integer
#  inquiry_id                :integer
#  visible                   :boolean
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  survey_id                 :integer
#  status                    :string(255)
#  survey_item_category_id   :integer
#  title                     :string(255)
#

class SurveyItem < ActiveRecord::Base
  has_and_belongs_to_many :survey_data_types

  belongs_to :survey_question
  belongs_to :survey_user_answer
  belongs_to :survey_biz_user_answer
  belongs_to :inquiry
  belongs_to :survey_item_category

  has_many :comments, as: :commentable, dependent: :destroy

  accepts_nested_attributes_for :survey_biz_user_answer
  accepts_nested_attributes_for :survey_user_answer

  attr_accessor :question
end
