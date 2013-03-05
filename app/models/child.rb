class Child < ActiveRecord::Base
  attr_accessible :age, :avatar, :exp, :height, :name, :regimen, :weekly_diet, :weight
	has_one :avatar, inverse_of :child
	has_one :regimen, inverse_of :child
	has_one :weekly_diet, inverse_of :child
	belongs_to :leaderboard, inverse_of :child
	has_one :monitor_child_relationship, inverse_of :child
end
