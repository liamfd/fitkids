class DailyExercise < ActiveRecord::Base
  attr_accessible :day_made, :minutes_exercised, :exercise_plan, :child
  belongs_to :child, inverse_of: :daily_exercises
  belongs_to :exercise_plan, inverse_of: :daily_exercises
end
