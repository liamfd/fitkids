class Child < User
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :leaderboard
	has_one :avatar, inverse_of: :child
  has_many :daily_diets, inverse_of: :child
  has_many :dailyregimens, inverse_of: :child
  has_many :monitor_child_relationships, inverse_of: :child
  belongs_to :leaderboard, inverse_of: :children

  accepts_nested_attributes_for :daily_diets

  #def get_current_diet(curr_user)
  #  @daily_diet = DailyDiet.new(curr_user)
  #end
  def before_create
    self.daily_diet = self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
  end


  def self.model_name
    User.model_name
  end

  def daily_diet_bonus(current_diet)
    #what this should do is check carbs, fruits, etc against the serv, then if they're all >= give a bonus. Only once! so maybe have it flip a flag
  end

  def daily_diet_maker()
    @curr_diet = self.daily_diets.order('created_at DESC').first
    if @curr_diet.day_made != Date.today
      self.daily_diets.build({"diet_plan" => DietPlan.find(2)})
      return true
    else
      return false
    end
    #is it stands this just makes a new one every time you hit profile
  end

  def calc_food_score(food_type)
    @curr_diet = self.daily_diets.order('created_at DESC').first
    @level_up_threshold = 20

    @food_score = @curr_diet.calc_servings(food_type)
    self.points += @food_score
    level_up(@level_up_threshold)
    return 100*self.points.to_f/@level_up_threshold.to_f
  end

  def level_up(level_up_threshold)
    if self.points >= level_up_threshold
      self.level += 1
      self.points -= @level_up_threshold
    end
  end

end
