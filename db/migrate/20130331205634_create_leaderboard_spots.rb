class CreateLeaderboardSpots < ActiveRecord::Migration
  def change
    create_table :leaderboard_spots do |t|
      t.integer :place
      t.references :leaderboard
      t.references :child

      t.timestamps
    end
    add_index :leaderboard_spots, :leaderboard_id
    add_index :leaderboard_spots, :child_id
  end
end
