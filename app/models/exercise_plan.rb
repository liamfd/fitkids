class ExercisePlan < ActiveRecord::Base
  attr_accessible :ex_title, :goal
  has_many :daily_exercises
end
