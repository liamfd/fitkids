class DailyDiet < ActiveRecord::Base
	attr_accessible :carbs_eaten, :fruit_eaten, :personal_score, :prot_eaten, :sweets_eaten, :veggie_eaten, :water_drank, :diet_plan, :child
	belongs_to :child, inverse_of: :daily_diets
	belongs_to :diet_plan, inverse_of: :daily_diets

	#def initialize(curr_user)
    #	super
  	#	diet_plan = DietPlan.find(2) #this should be find by name
  	#	child = User.find(@curr_user.instance_id)	#this I'm not sure. Probably whosever page you're currently on.
  	#end
 
end
