class RaceUser < ActiveRecord::Base
  attr_accessible :user_id, :race_id, :approved

  belongs_to :race
  belongs_to :user
end
