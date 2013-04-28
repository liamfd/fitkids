class Child < User
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
	has_one :avatar, inverse_of: :child
  has_many :daily_diets, inverse_of: :child
  has_many :dailyregimens, inverse_of: :child
  has_many :monitor_child_relationships, inverse_of: :child
  has_many :leaderboard_spots, inverse_of: :child
  
  def incCarbs()
  	daily_diets.carbs_eaten += 1
  end

  def self.model_name
    User.model_name
  end

end
