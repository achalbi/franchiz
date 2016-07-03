# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string
#  lname           :string
#  email           :string
#  mobile          :string
#  created_at      :datetime
#  updated_at      :datetime
#  salutation      :string
#  password        :string
#  password_digest :text
#  business_id     :integer
#

class User < ActiveRecord::Base
  has_one :address
  has_one :inquiry

  has_many :comments, as: :userable

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :inquiry

  validates_presence_of :fname, :on => :create
  validates_presence_of :lname, :on => :create
  validates_presence_of :mobile, :on => :create

  validates_presence_of :address, :on => :create
  validates_associated :address



  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } #,uniqueness: { case_sensitive: false }

  def name
    fname + ' ' + lname
  end
end

