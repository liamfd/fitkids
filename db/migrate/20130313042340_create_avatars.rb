class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.int :color
      t.string, :name
      t.text, :description
      t.reference :child

      t.timestamps
    end
  end
end
