class ExerciseRep < ActiveRecord::Base
  attr_accessible :reps
  belongs_to :exercise, inverse_of: :exercise_rep
  belongs_to :daily_regimen, inverse_of: :exercise_rep
end
