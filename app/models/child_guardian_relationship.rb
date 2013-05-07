class ChildGuardianRelationship < ActiveRecord::Base
	attr_accessible :bonus, :relation, :child_id, :watcher_id
  	belongs_to :child, inverse_of: :child_guardian_relationships
  	belongs_to :watcher, inverse_of: :child_guardian_relationships

end
