class AddExerciseBonusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :exercise_bonus, :boolean, :default=>false
  end
end
