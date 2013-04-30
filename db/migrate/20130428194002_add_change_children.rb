class AddChangeChildren < ActiveRecord::Migration
	def change
  		change_column :children, :points, :integer, :default => 0
  		change_column :children, :level, :integer, :default => 1
  		change_column :children, :exercise_score, :integer, :default => 0
  		change_column :children, :diet_score, :integer, :default => 0
	end
end
