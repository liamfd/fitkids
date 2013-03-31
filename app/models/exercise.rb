class Exercise < ActiveRecord::Base
  attr_accessible :body_part, :description, :difficulty, :reps
  has_one :leaderboard, inverse_of: :exercise
  has_many :exercise_reps, inverse_of: :exercise
end
