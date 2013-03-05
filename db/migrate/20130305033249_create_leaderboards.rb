class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.string :board_type
      t.reference :child

      t.timestamps
    end
  end
end
