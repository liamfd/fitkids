class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.int :level
      t.int :points
      t.date :date_of_birth
      t.float :height
      t.float :weight
      t.string :sex
      t.int :diet_score
      t.int :exercise_score
      t.references :diet_plan

      t.timestamps
    end
    add_index :children, :diet_plan_id
  end
end
