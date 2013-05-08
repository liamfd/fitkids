class CreateDailyExercises < ActiveRecord::Migration
  def change
    create_table :daily_exercises do |t|
      t.integer :minutes_exercised
      t.date :day_made

      t.timestamps
  end
end
