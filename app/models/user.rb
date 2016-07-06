# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  email           :string(255)
#  mobile          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  salutation      :string(255)
#  password        :string(255)
#  password_digest :text
#  business_id     :integer
#

class User < ActiveRecord::Base
  has_one :address
  has_one :inquiry

  has_many :comments, as: :userable

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :inquiry

  validates_presence_of :fname
  validates_presence_of :lname
  validates_presence_of :mobile

  validates_presence_of :address
  validates_associated :address



  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } #,uniqueness: { case_sensitive: false }

  def name
    fname + ' ' + lname
  end
end

