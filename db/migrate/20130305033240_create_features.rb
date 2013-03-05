class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :feature_type, :null => false
      t.string :color, :defailt => "green"
      t.binary :image

      t.timestamps
    end
  end
end
