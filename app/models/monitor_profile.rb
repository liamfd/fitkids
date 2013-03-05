class MonitorProfile < ActiveRecord::Base
  attr_accessible :article, :name, :picture, :tag
	has_many :monitor_child_relationships , inverse_of :monitorProfile
	#many to many with articles
	#many to many with tags
end
