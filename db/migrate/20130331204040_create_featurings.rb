class CreateFeaturings < ActiveRecord::Migration
  def change
    create_table :featurings do |t|
      t.int :level
      t.references :avatar
      t.references :feature

      t.timestamps
    end
    add_index :featurings, :avatar_id
    add_index :featurings, :feature_id
  end
end
