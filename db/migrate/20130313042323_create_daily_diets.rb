class CreateDailyDiets < ActiveRecord::Migration
  def change
    create_table :daily_diets do |t|
      t.int, :personal_score
      t.string :veggie_eaten
      t.string :int,
      t.int, :prot_eaten
      t.int, :carbs_eaten
      t.int, :fruit_eaten
      t.int, :water_drank
      t.int, :sweets_eaten
      t.reference, :child
      t.reference :diet_plan

      t.timestamps
    end
  end
end
