class CleanUpAvatars < ActiveRecord::Migration
  def up
  	drop_table :avatars
  end

  def down
  	create_table :avatars do |t|
      t.integer :color
      t.string :name
      t.text :description
      t.references :child

      t.timestamps
    end
    add_index :avatars, :child_id
  end
end
