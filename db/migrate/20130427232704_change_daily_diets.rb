class ChangeDailyDiets < ActiveRecord::Migration
  def change
  	change_column :daily_diets do |t|
  	  t.integer :personal_score, default: 0
      t.integer :veggie_eaten, default: 0
      t.integer :prot_eaten, default: 0
      t.integer :carbs_eaten, default: 0
      t.integer :fruit_eaten, default: 0
      t.integer :water_drank, default: 0
      t.integer :sweets_eaten, default: 0
      t.timestamps
 		end
  end
end
