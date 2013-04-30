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
  

  def inc_carbs()
  	@daily_diet.carbs_eaten += 1
  end

  def self.model_name
    User.model_name
  end

end
