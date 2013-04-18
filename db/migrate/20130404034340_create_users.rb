class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :birth_date
      t.string :sex
      t.integer :height
      t.integer :weight
      t.integer :points
      t.integer :level
      t.integer :exercise_score
      t.integer :diet_score
      t.text :bio
      t.string :type

      t.timestamps
    end
  end
end
