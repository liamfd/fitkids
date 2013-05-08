class AddDefaultToLevelInAvatar < ActiveRecord::Migration
  def change
  	change_column :avatars, :integer, :string, :default => "avatar1.jpg"
  end
end
