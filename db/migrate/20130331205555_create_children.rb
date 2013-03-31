class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :level
      t.integer :points
      t.date :date_of_birth
      t.float :height
      t.float :weight
      t.string :sex
      t.integer :diet_score
      t.integer :exercise_score
      t.references :diet_plan

      t.timestamps
    end
    add_index :children, :diet_plan_id
  end
end
