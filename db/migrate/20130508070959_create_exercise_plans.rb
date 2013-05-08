class CreateExercisePlans < ActiveRecord::Migration
  def change
    add_column :exercise_plans, :ex_title, :string
    add_column :exercise_plans, :goal, :integer, :default => 0
  end
end
