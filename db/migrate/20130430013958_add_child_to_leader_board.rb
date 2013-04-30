class AddChildToLeaderBoard < ActiveRecord::Migration
  def up
    add_column :leaderboards, :child, :integer
    remove_column :leaderboards, :leaderboard_spots
  end

  def down
    remove_column :leaderboards, :child
    add_column :leaderboards, :leaderboard_spots, :integer
  end
end
