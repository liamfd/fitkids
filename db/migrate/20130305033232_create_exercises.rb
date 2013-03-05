class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.reference :exercise_type
      t.int :reps

      t.timestamps
    end
  end
end
