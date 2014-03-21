class AddLevelThresholdToUsers < ActiveRecord::Migration
  def change
	add_column :users, :level_threshold, :integer, :default=>20
  end
end
