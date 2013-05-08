class AddRefsToDailyExercise < ActiveRecord::Migration
  def change
    add_column :daily_exercises, :child_id, :integer
    add_column :daily_exercises, :diet_plan_id, :integer
  end
end
