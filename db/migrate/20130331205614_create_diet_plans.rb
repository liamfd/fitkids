class CreateDietPlans < ActiveRecord::Migration
  def change
    create_table :diet_plans do |t|
      t.integer :veggie_serv
      t.integer :prot_serv
      t.integer :carbs_serv
      t.integer :fruit_serv
      t.integer :water_serv
      t.integer :sweets_serv

      t.timestamps
    end
  end
end
