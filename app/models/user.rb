class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation,
                  :first_name, :last_name, :location
  has_secure_password

  has_many :activities
  has_many :race_users
  has_many :races, through: :race_users

  validates_presence_of :password, :on => :create

  def full_name
    "#{first_name} #{last_name}"
  end

  def is_admin?
    role == "admin"
  end

end