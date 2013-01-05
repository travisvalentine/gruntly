class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_secure_password

  has_one  :profile, dependent: :destroy

  has_many :race_users
  has_many :races, through: :race_users

end
