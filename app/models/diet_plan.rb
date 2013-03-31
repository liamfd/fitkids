class DietPlan < ActiveRecord::Base
  attr_accessible :carbs_serv, :fruit_serv, :prot_serv, :sweets_serv, :veggie_serv, :water_serv
  has_many :daily_diets, inverse_of: :diet_plan
  has_many :children,, inverse_of: :diet_plan
end
