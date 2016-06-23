# == Schema Information
#
# Table name: inquiries
#
#  id             :integer          not null, primary key
#  token          :string
#  business_id    :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  status         :string
#  workflow_state :string
#

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

  def self.status_filter(param_status, session_status, biz_id, param_page)
    if param_status.blank? && session_status.blank?
      session_status = ''
    elsif param_status.blank? && param_page.blank?
      session_status = ''
    elsif param_status.present?
      session_status = param_status
    end
    inquiries = []
    if param_status.nil?
        if session_status.blank?
            inquiries = Inquiry.includes(:user, :business)
              .where(business_id: biz_id)
              .order(id: :desc).page param_page
        else
          if session_status == 'new'
            inquiries = Inquiry.includes(:user, :business)
              .where(business_id: biz_id, workflow_state: nil)
              .order(id: :desc).page param_page
          else
            inquiries = Inquiry.includes(:user, :business)
              .where(business_id: biz_id, workflow_state: session_status)
              .order(id: :desc).page param_page
          end
        end
    else
      if param_status == ''
            session_status = ''
            inquiries = Inquiry.includes(:user, :business)
              .where(business_id: biz_id)
              .order(id: :desc).page param_page
      elsif param_status == 'new'
        session_status = 'new'
        inquiries = Inquiry.includes(:user, :business)
          .where(business_id: biz_id, workflow_state: nil)
          .order(id: :desc).page param_page
      else
        session_status = param_status
        inquiries = Inquiry.includes(:user, :business)
          .where(business_id: biz_id, workflow_state: session_status)
          .order(id: :desc).page param_page
      end
    end
    return inquiries, session_status
  end

end
