class ChildGuardianRelationship < ActiveRecord::Base
  belongs_to :child, inverse_of: :ChildGuardianRelationship
  belongs_to :guardian, inverse_of: :ChildGuardianRelationship
  attr_accessible :bonus, :relation
end
