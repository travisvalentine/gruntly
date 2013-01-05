class RaceUser < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :race
  belongs_to :user
end
