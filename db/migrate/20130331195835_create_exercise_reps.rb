class CreateExerciseReps < ActiveRecord::Migration
  def change
    create_table :exercise_reps do |t|
      t.int :reps
      t.references :exercise
      t.references :daily_regimen

      t.timestamps
    end
    add_index :exercise_reps, :exercise_id
    add_index :exercise_reps, :daily_regimen_id
  end
end
