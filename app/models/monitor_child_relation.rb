class MonitorChildRelation < ActiveRecord::Base
  attr_accessible :child, :monitor_profile, :relation
	belongs_to :child, inverse_of: child
	belongs_to :monitor_profile, inverse_of: monitor_profile
end
