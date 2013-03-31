class MonitorProfile < ActiveRecord::Base
  attr_accessible :bio, :name
  has_many :monitor_child_relationships, inverse_of: :monitor_profile
end
