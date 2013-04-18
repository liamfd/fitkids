class AddDietNameToDietPlans < ActiveRecord::Migration
  def change
    add_column :diet_plans, :diet_name, :string
  end
end
