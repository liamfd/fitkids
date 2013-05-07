class DailyDiet < ActiveRecord::Base
	attr_accessible :daily_progress, :got_bonus, :carbs_eaten, :fruit_eaten, :personal_score, :prot_eaten, :sweets_eaten, :veggie_eaten, :water_drank, :diet_plan, :child
	belongs_to :child, inverse_of: :daily_diets
	belongs_to :diet_plan, inverse_of: :daily_diets

	#def initialize(curr_user)
    #	super
  	#	diet_plan = DietPlan.find(2) #this should be find by name
  	#	child = User.find(@curr_user.instance_id)	#this I'm not sure. Probably whosever page you're currently on.
  	#end

  	def before_create
    	self.day_made ||= Date.today if new_record?
    	self.got_bonus = false
  	end

  	def get_daily_bonus
  		if  (!self.got_bonus) and 
  				(self.carbs_eaten >= self.diet_plan.carbs_serv) and
  				(self.fruit_eaten >= self.diet_plan.fruit_serv) and
				(self.prot_eaten >= self.diet_plan.prot_serv) and
				(self.sweets_eaten >= self.diet_plan.sweets_serv) and
				(self.veggie_eaten >= self.diet_plan.veggie_serv) and
				(self.water_drank >= self.diet_plan.water_serv) and
			
  			self.got_bonus = true
  			return true
  		else
  			return false
	  	end
	end

  	def calc_servings(food_type)
  		@points = 0
  		#if !daily_progress
  		#	self.daily_progress = 0
  		#end
  		if food_type == "carbs" and self.carbs_eaten < self.diet_plan.carbs_serv
  			self.carbs_eaten+=1
  			self.daily_progress+=1
  			@points+=1

  		elsif food_type == "fruit" and self.fruit_eaten < self.diet_plan.fruit_serv
  			self.fruit_eaten+=1
  			self.daily_progress+=1
  			@points+=1

  		elsif food_type == "prot" and self.prot_eaten < self.diet_plan.prot_serv
  			self.prot_eaten+=1
  			self.daily_progress+=1
  			@points+=1

		elsif food_type == "sweets" and self.sweets_eaten < self.diet_plan.sweets_serv
  			self.sweets_eaten+=1
  			self.daily_progress+=1
  			@points+=1

  		elsif food_type == "veggie" and self.veggie_eaten < self.diet_plan.veggie_serv
  			self.veggie_eaten+=1
  			self.daily_progress+=1
  			@points+=1

  		elsif food_type == "water" and self.water_drank < self.diet_plan.water_serv
  			self.water_drank+=1
  			self.daily_progress+=1
  			@points+=1
  		end
  		#self.save
  		if get_daily_bonus
  			@points += 5
  		end
  		self.save
  		return @points
  	end

end
