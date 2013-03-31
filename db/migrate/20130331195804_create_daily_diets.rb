class CreateDailyDiets < ActiveRecord::Migration
  def change
    create_table :daily_diets do |t|
      t.int :personal_score
      t.int :veggie_eaten
      t.int :prot_eaten
      t.int :carbs_eaten
      t.int :fruit_eaten
      t.int :water_drank
      t.int :sweets_eaten
      t.references :child
      t.references :diet_plan

      t.timestamps
    end
    add_index :daily_diets, :child_id
    add_index :daily_diets, :diet_plan_id
  end
end
