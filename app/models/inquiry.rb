class Inquiry < ActiveRecord::Base
  include Workflow
  
  belongs_to :business
  belongs_to :user
  has_many :inquiry_answers
  has_one :survey
  has_one :location
  
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :inquiry_answers
  
      
    validates_presence_of :user
    validates_associated :user

  paginates_per 8
  
  workflow do
    state :new do
      event :init, :transitions_to => :in_progress
    end
    state :in_progress do
      event :incomplete, :transitions_to => :inquiry_incomplete
      event :complete, :transitions_to => :inquiry_complete
    end
    state :inquiry_complete do
      event :incomplete, :transitions_to => :inquiry_incomplete
      event :survey_init, :transitions_to => :awaiting_biz_input
      event :reject, :transitions_to => :rejected
    end
    state :awaiting_biz_input do
      event :user_input, :transitions_to => :awaiting_user_input
    end
    state :awaiting_user_input do
      event :biz_review, :transitions_to => :awaiting_biz_review
      event :user_input, :transitions_to => :awaiting_user_input
    end
    state :awaiting_biz_review do
      event :user_input, :transitions_to => :awaiting_user_input
      event :accept, :transitions_to => :accepted
      event :reject, :transitions_to => :rejected
      event :complete, :transitions_to => :inquiry_complete
    end
    state :inquiry_incomplete do
      event :complete, :transitions_to => :inquiry_complete
    end
    state :accepted do
      event :user_input, :transitions_to => :awaiting_user_input
      event :complete, :transitions_to => :inquiry_complete
    end
    state :rejected
  end

end
