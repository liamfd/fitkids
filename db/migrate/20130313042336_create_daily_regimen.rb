class CreateDailyRegimen < ActiveRecord::Migration
  def change
    create_table :daily_regimen do |t|
      t.string, :focus
      t.reference :child

      t.timestamps
    end
  end
end
