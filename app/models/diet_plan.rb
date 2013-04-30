class DietPlan < ActiveRecord::Base
  attr_accessible :carbs_serv, :fruit_serv, :prot_serv, :sweets_serv, :veggie_serv, :water_serv, :diet_name, :day_made
  has_many :daily_diets, inverse_of: :diet_plan

  def after_initialize
    self.day_made ||= Date.today if new_record?
  end
end
