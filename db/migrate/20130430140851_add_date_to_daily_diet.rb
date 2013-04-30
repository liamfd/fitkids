class AddDateToDailyDiet < ActiveRecord::Migration
  def change
    add_column :daily_diets, :day_made, :date
  end
end
