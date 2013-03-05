class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :name, :null => false
      t.string :color, default => "green"
      t.text :story
      t.binary :image
      t.reference :features

      t.timestamps
    end
  end
end
