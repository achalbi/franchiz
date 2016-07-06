# == Schema Information
#
# Table name: biz_users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  email           :string(255)
#  mobile          :string(255)
#  salutation      :string(255)
#  password        :string(255)
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

class BizUser < ActiveRecord::Base
  belongs_to :business
  has_secure_password

  has_many :comments, as: :userable

  validates_presence_of :fname
  validates_presence_of :lname
  validates_presence_of :password_digest, :on => :create


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true, :on => :create
  validates_presence_of :password_confirmation, :on => :create

  def name
     fname.capitalize + ' ' + lname
  end

  def full_name
     salutation + '. ' + fname + ' ' + lname
  end
end
