class LeaderboardSpot < ActiveRecord::Base
  attr_accessible :place
  belongs_to :leaderboard, inverse_of: :leaderboard_spot
  belongs_to :child, inverse_of: :leaderboard_spot
end
