class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :appearance
      t.int :level
      t.string :feature_type

      t.timestamps
    end
  end
end
