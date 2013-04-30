class ChangeDefaultLevel < ActiveRecord::Migration
  	change_column :children, :level, :integer, :default => 1
end
