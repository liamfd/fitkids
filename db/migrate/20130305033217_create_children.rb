class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name, :null => false
      t.int :height, :null => false
      t.int :weight, :null => false
      t.int :age, :null => false
      t.int :exp, :default => 0
      t.reference :avatar
      t.reference :weekly_diet
      t.reference :regimen

      t.timestamps
    end
  end
end
