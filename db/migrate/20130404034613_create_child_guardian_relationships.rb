class CreateChildGuardianRelationships < ActiveRecord::Migration
  def change
    create_table :child_guardian_relationships do |t|
      t.string :relation
      t.float :bonus
      t.references :child
      t.references :guardian

      t.timestamps
    end
    add_index :child_guardian_relationships, :child_id
    add_index :child_guardian_relationships, :guardian_id
  end
end
