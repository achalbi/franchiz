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
