class Child < User
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :leaderboard, :exercise_done, :exercise_goal, :daily_diet_id, :avatar_id, :exercise_bonus, :food_score
	has_one :avatar, inverse_of: :child
  has_many :daily_diets, inverse_of: :child
  has_many :daily_exercises, inverse_of: :child
  has_many :child_guardian_relationships, inverse_of: :child, :dependent => :destroy
  has_many :watchers, :through => :child_guardian_relationships
  belongs_to :leaderboard, inverse_of: :children

  accepts_nested_attributes_for :daily_diets

  #def get_current_diet(curr_user)
  #  @daily_diet = DailyDiet.new(curr_user)
  #end
  after_create :make_daily_diet, :make_avatar
  after_find :daily_reset, :make_avatar

  def make_daily_diet
    curr_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
    curr_diet.day_made = Date.current
    curr_diet.save
    self.exercise_goal=60
    self.exercise_bonus=false
    self.save
  end

  def daily_reset
    #check most recent against todays date
    #order('created_at DESC').first
    #curr_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
    #curr_diet.day_made = Date.current
    #self.save
    curr_diet = self.daily_diets.order('created_at DESC').first
    if curr_diet.day_made != Date.current
      curr_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
      curr_diet.day_made = Date.current
      curr_diet.save
      #since you get a new diet every day, it stands to reason that if you must reset this it's a new day
      self.exercise_done = 0
      self.exercise_bonus = false
      self.save
    end
  end

  def make_avatar
    if self.avatar.blank?
      self.build_avatar
      self.save
    end
    self.avatar.set_image_name(self.level)
  end

#  def after_create :after_create
 #   daily_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
 #   avatar = self.avatar.build({"level" => "0"})
 #   daily_diet.save
 #   avatar.save
 # end

 # def after_find :after_find
 #   #check most recent against todays date
 #   #order('created_at DESC').first
 #   daily_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
 #   daily_diet.save
 # end

  def self.model_name
    User.model_name
  end

  def daily_diet_bonus(current_diet)
    #what this should do is check carbs, fruits, etc against the serv, then if they're all >= give a bonus. Only once! so maybe have it flip a flag
  end

  def daily_diet_maker()
    curr_diet = self.daily_diets.order('created_at DESC').first
    if curr_diet.day_made != Date.current
      curr_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
      curr_diet.day_made = Date.current
      self.save
    end
    #is it stands this just makes a new one every time you hit profile
  end

  def calc_food_score(food_type)
    @curr_diet = self.daily_diets.order('created_at DESC').first

    @level_up_threshold = 20
    @food_score = @curr_diet.calc_servings(food_type)
    self.food_score = @curr_diet.daily_progress
    self.points += @food_score
    level_up(@level_up_threshold)
    return 100*self.points.to_f/@level_up_threshold.to_f
  end

  def add_exercise_score(amount)
    @level_up_threshold = 20
    @prev_exercise_done = self.exercise_done

    self.exercise_done += amount.to_i

    #removes the previous points due to exercise, then adds new
    
    self.points -= @prev_exercise_done.to_f/5
    if self.exercise_done >= self.exercise_goal
      self.points += self.exercise_goal.to_f/5
    else
      self.points += self.exercise_done.to_f/5
    end

    if self.exercise_bonus == false and self.exercise_done >= self.exercise_goal
      self.points+=10
      self.exercise_bonus = true
    end

    level_up(@level_up_threshold)
    self.save
  end

  def level_up(level_up_threshold)
    if self.points >= @level_up_threshold
      self.level += 1
      self.points -= @level_up_threshold
      self.avatar.set_image_name(self.level)
    end
  end

end
