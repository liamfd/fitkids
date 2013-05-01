class AddBonusAndProgressToDailyDiet < ActiveRecord::Migration
  def change
    change_column :daily_diets, :daily_progress, :integer
  end
end
