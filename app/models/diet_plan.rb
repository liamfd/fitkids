class DietPlan < ActiveRecord::Base
  attr_accessible :carbs_serv, :fruit_serv, :prot_serv, :sweets_serv, :veggie_serv, :water_serv, :diet_name, :day_made
  has_many :daily_diets, inverse_of: :diet_plan

  def get_total
  	@total_servings = self.carbs_serv + self.fruit_serv + self.prot_serv + self.sweets_serv + self.veggie_serv + self.water_serv
  	return @total_servings
  end
end
