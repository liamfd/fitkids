class ChangeFoodScoreOfUsers < ActiveRecord::Migration
  def change
    change_column :users, :food_score, :integer, :default=>0
  end
end
