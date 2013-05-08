class ChangeLevelInChild < ActiveRecord::Migration
  def change
  	change_column :users, :level, :integer, :default => 1
  end
end
