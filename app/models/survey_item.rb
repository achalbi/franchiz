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
#  status                    :string
#

class SurveyItem < ActiveRecord::Base

  belongs_to :survey_question
  belongs_to :survey_user_answer
  belongs_to :survey_biz_user_answer
  belongs_to :inquiry
  belongs_to :survey
  
  accepts_nested_attributes_for :survey_biz_user_answer
  accepts_nested_attributes_for :survey_user_answer
  
  attr_accessor :question
end
