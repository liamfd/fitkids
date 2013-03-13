class CreateExerciseReps < ActiveRecord::Migration
  def change
    create_table :exercise_reps do |t|
      t.int, :reps
      t.reference, :exercise
      t.reference :daily_regimen

      t.timestamps
    end
  end
end
