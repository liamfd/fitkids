class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :image_name
      t.references :child

      t.timestamps
    end
    add_index :avatars, :child_id
  end
end
