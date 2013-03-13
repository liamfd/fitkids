class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string, :body_part
      t.int, :difficulty
      t.text, :description
      t.int :reps

      t.timestamps
    end
  end
end
