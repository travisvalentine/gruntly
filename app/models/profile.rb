class Profile < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :location, :user_id

  belongs_to :user

  has_many :activities
end
