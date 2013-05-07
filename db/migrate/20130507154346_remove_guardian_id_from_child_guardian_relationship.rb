class RemoveGuardianIdFromChildGuardianRelationship < ActiveRecord::Migration
  def up
    remove_column :child_guardian_relationships, :guardian_id
    add_column :child_guardian_relationships, :watcher_id, :integer
  end

  def down
    add_column :child_guardian_relationships, :guardian_id, :integer
    remove_column :child_guardian_relationships, :watcher_id
  end
end
