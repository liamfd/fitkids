class ChangeUserDefaults < ActiveRecord::Migration
	def change
  		change_column :users, :points, :integer, :default => 0
  		change_column :users, :level, :integer, :default => 0
  		change_column :users, :exercise_score, :integer, :default => 0
  		change_column :users, :diet_score, :integer, :default => 0
	end
end

