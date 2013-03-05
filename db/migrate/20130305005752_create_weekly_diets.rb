class CreateWeeklyDiets < ActiveRecord::Migration
  def change
    create_table :weekly_diets do |t|
      t.int :carb_goal,  :default => 0
      t.int :veggie_goal,  :default => 0
      t.int :fruit_goal,  :default => 0
      t.int :protein_goal,  :default => 0
      t.int :dairy_goal,  :default => 0
      t.int :water_goal,  :default => 0
      t.int :sweets_goal,  :default => 0
      t.int :carbs_eaten,  :default => 0
      t.int :veggie_eaten,  :default => 0
      t.int :fruit_eaten,  :default => 0
      t.int :protein_eaten,  :default => 0
      t.int :dairy_eaten,  :default => 0
      t.int :water_eaten,  :default => 0
      t.int :sweets_eaten,  :default => 0

      t.timestamps
    end
  end
end
