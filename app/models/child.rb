class Child < ActiveRecord::Base
  attr_accessible :date_of_birth, :diet_score, :exercise_score, :height, :level, :name, :points, :sex, :weight
  belongs_to :diet_plan, inverse_of: :child
  has_one :avatar, inverse_of: :child
  has_many :daily_diets, inverse_of: :child
  has_many :dailyregimens, inverse_of: :child
  has_many :monitor_child_relationships, inverse_of: :child
  has_many :leaderboard_spots, inverse_of: :child
end
