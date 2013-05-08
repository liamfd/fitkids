class AddFoodScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :food_score, :integer
  end
end
