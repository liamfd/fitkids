class CreateDietPlans < ActiveRecord::Migration
  def change
    create_table :diet_plans do |t|
      t.int, :veggie_serv
      t.int, :prot_serv
      t.int, :carbs_serv
      t.int, :fruit_serv
      t.int, :water_serv
      t.int :sweets_serv

      t.timestamps
    end
  end
end
