class AddExerciseStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :exercise_done, :integer, :default=>0
    add_column :users, :exercise_goal, :integer, :default=>0
  end
end
