class Race < ActiveRecord::Base
  attr_accessible :controller, :races

  has_many :users, through: race_users
end
