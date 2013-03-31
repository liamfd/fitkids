class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :body_part
      t.integer :difficulty
      t.text :description
      t.integer :reps

      t.timestamps
    end
  end
end
