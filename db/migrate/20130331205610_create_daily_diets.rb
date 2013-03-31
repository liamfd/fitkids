class CreateDailyDiets < ActiveRecord::Migration
  def change
    create_table :daily_diets do |t|
      t.integer :personal_score
      t.integer :veggie_eaten
      t.integer :prot_eaten
      t.integer :carbs_eaten
      t.integer :fruit_eaten
      t.integer :water_drank
      t.integer :sweets_eaten
      t.references :child
      t.references :diet_plan

      t.timestamps
    end
    add_index :daily_diets, :child_id
    add_index :daily_diets, :diet_plan_id
  end
end
