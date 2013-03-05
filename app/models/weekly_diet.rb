class WeeklyDiet < ActiveRecord::Base
  attr_accessible :carb_goal, :carbs_eaten, :dairy_eaten, :dairy_goal, :fruit_eaten, :fruit_goal, :protein_eaten, :protein_goal, :sweets_eaten, :sweets_goal, :veggie_eaten, :veggie_goal, :water_eaten, :water_goal
belongs_to :child , inverse_of :weeklyDiet
end
