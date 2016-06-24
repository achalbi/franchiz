# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string
#  detail     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  website    :string
#

class Business < ActiveRecord::Base
    has_many :biz_users, dependent: :destroy
    accepts_nested_attributes_for :biz_users
    has_many :survey_templates, as: :surveyable   
    has_many :survey_item_categories, as: :categorisable 
    
    has_many :inquiry_questions
    has_many :survey_questions
    accepts_nested_attributes_for :inquiry_questions
    accepts_nested_attributes_for :survey_questions
    
    has_many :inquiries
    
    validates_presence_of :biz_users
    validates_associated :biz_users
    
    validates_associated :inquiry_questions
    validates_associated :survey_questions
    
    validates_presence_of :name

    
     # validates :name, length: { maximum: 50 }
     
     def to_s
        self.name
     end

end
