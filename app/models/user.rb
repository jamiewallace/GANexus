class User < ActiveRecord::Base

  has_secure_password

  has_and_belongs_to_many :courses

  before_save :ensure_has_role

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :mobile, :ice_mobile, :role



  def role?(r)
    self.role == r.to_s
  end

  def ensure_has_role
    self.role ||= "student"
  end

  def full_name
    [self.first_name, self.last_name].join(" ")
  end

end