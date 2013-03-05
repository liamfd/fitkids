class CreateRegimen < ActiveRecord::Migration
  def change
    create_table :regimen do |t|
      t.reference :exercise

      t.timestamps
    end
  end
end
