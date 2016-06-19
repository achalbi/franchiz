class BizUser < ActiveRecord::Base
  belongs_to :business
  has_secure_password
  
  validates_presence_of :fname, :on => :create
  validates_presence_of :lname, :on => :create
  validates_presence_of :password_digest, :on => :create
  
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true, :on => :create
  validates_presence_of :password_confirmation, :on => :create
  
  def name
     self.fname.capitalize+" "+self.lname
  end
  
  def full_name
     self.salutation+". "+self.fname+" "+self.lname
  end  
end
