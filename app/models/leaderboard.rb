class Leaderboard < ActiveRecord::Base
  attr_accessible :age_group, :board_type
  has_many :children, inverse_of: :leaderboard
  belongs_to :exercise, inverse_of: :leaderboards
end
