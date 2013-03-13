class CreateLeaderboardSpots < ActiveRecord::Migration
  def change
    create_table :leaderboard_spots do |t|
      t.int, :place
      t.reference, :leaderboard
      t.reference :child

      t.timestamps
    end
  end
end
