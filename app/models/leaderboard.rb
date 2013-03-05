class Leaderboard < ActiveRecord::Base
  attr_accessible :board_type, :child
	has_many :child , inverse_of :leaderboard
end
