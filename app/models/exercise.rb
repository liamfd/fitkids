class Exercise < ActiveRecord::Base
  attr_accessible :exercise_type, :reps
  #many to many with regimen
end
