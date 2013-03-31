class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.string :board_type
      t.int :age_group
      t.references :exercise

      t.timestamps
    end
    add_index :leaderboards, :exercise_id
  end
end
