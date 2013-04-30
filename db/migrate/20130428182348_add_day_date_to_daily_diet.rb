class AddDayDateToDailyDiet < ActiveRecord::Migration
  def change
		add_column :daily_diets, :day_date, :date
  end
end
