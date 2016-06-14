class SurveyUserAnswer < ActiveRecord::Base
    belongs_to :survey_question
    has_one :survey_item

    def to_s
        self.id.to_s+" : "+self.answer
    end
end
