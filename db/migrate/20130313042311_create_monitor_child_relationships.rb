class CreateMonitorChildRelationships < ActiveRecord::Migration
  def change
    create_table :monitor_child_relationships do |t|
      t.String, :relation
      t.float, :bonus
      t.reference, :child
      t.reference :monitor

      t.timestamps
    end
  end
end
