class CreateMonitorChildRelationships < ActiveRecord::Migration
  def change
    create_table :monitor_child_relationships do |t|
      t.string :relation
      t.float :bonus
      t.references :child
      t.references :monitor

      t.timestamps
    end
    add_index :monitor_child_relationships, :child_id
    add_index :monitor_child_relationships, :monitor_id
  end
end
