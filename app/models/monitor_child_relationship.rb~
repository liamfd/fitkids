class MonitorChildRelationship < ActiveRecord::Base
  attr_accessible :bonus, :relation
  belongs_to :child, inverse_of: :monitor_child_relationship
  belongs_to :monitor, inverse_of: :monitor_child_relationship
end
