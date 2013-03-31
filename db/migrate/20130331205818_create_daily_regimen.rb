class CreateDailyRegimen < ActiveRecord::Migration
  def change
    create_table :daily_regimen do |t|
      t.string :focus
      t.references :child

      t.timestamps
    end
    add_index :daily_regimen, :child_id
  end
end
