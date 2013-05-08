class Watcher < User
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :child_guardian_relationships, inverse_of: :watcher, :dependent => :destroy
  #  accepts_nested_attributes_for :child_guardian_relationships, :allow_destroy => true
  has_many :children, :through => :child_guardian_relationships
  has_many :articles, inverse_of: :watcher
  #  accepts_nested_attributes_for :articles, :allow_destroy => false

  def self.model_name
    User.model_name
  end
end
