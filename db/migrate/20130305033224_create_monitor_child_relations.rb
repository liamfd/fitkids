class CreateMonitorChildRelations < ActiveRecord::Migration
  def change
    create_table :monitor_child_relations do |t|
      t.string :relation
      t.reference :child
      t.reference :monitor

      t.timestamps
    end
  end
end
