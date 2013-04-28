class DailyDiet < ActiveRecord::Base
	attr_accessible :carbs_eaten, :fruit_eaten, :personal_score, :prot_eaten, :sweets_eaten, :veggie_eaten, :water_drank
  belongs_to :child, inverse_of: :daily_diets
  belongs_to :diet_plan, inverse_of: :daily_diets
end
