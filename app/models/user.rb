class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_secure_password

  has_one  :profile
  has_many :races, through: :race_users

end
