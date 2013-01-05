class Race < ActiveRecord::Base
  attr_accessible :name, :city, :state, :date, :details

  has_many :users

  has_many :race_users
  has_many :users, through: :race_users

  def location
    "#{city}, #{state}" if city
  end
end
