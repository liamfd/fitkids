class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string, :name
      t.int, :level
      t.int, :points
      t.date, :date_of_birth
      t.float, :height
      t.float, :weight
      t.string, :sex
      t.int, :diet_score
      t.int, :exercise_score
      t.reference :diet_plan

      t.timestamps
    end
  end
end
