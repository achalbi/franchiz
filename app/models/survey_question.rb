class SurveyQuestion < ActiveRecord::Base
  
  scope :global, -> { where(global: true) } 

  belongs_to :business

  
  has_one :survey_item
  
  has_many :survey_user_answers
  has_many :survey_biz_user_answers
  
  accepts_nested_attributes_for :survey_user_answers
  accepts_nested_attributes_for :survey_biz_user_answers

    def to_s
        self.id.to_s+" : "+self.title
    end
end
