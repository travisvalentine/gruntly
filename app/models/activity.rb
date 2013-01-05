class Activity < ActiveRecord::Base
  attr_accessible :action, :distance, :day

  belongs_to :user
end
