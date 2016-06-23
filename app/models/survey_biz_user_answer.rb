# == Schema Information
#
# Table name: survey_biz_user_answers
#
#  id                 :integer          not null, primary key
#  answer             :text
#  survey_question_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class SurveyBizUserAnswer < ActiveRecord::Base
    belongs_to :survey_question
    has_one :survey_item
    
    def to_s
        self.id.to_s+" : "+self.answer
    end
end
