class AddLeaderboardToChild < ActiveRecord::Migration
  def up
    add_column :children, :leaderboard, :integer
    remove_column :children, :leaderboard_spots
  end

  def down
    remove_column :children, :leaderboard
    add_column :children, :leaderboard_spots, :integer
  end
end
