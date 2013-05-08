class AddDailyDietIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :daily_diet_id, :integer
  end
end
