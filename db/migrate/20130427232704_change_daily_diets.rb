class ChangeDailyDiets < ActiveRecord::Migration
  def up
  	remove_column(:daily_diets, :personal_score, :veggie_eaten, :prot_eaten, :carbs_eaten, :fruit_eaten, :water_drank, :sweets_eaten)
    t.timestamps
 		end
  end

    change_table :daily_diets do |t|
        t.integer :personal_score, :default => 0
        t.integer :veggie_eaten, :default => 0
        t.integer :prot_eaten, :default => 0
        t.integer :carbs_eaten, :default => 0
        t.integer :fruit_eaten, :default => 0
        t.integer :water_drank, :default => 0
        t.integer :sweets_eaten, :default => 0
      end

end
