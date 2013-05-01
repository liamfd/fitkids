class ChangeDefaultsOnDailyDiet < ActiveRecord::Migration
  def change
    change_column :daily_diets, :daily_progress, :integer, :default => 0
  end
end

