class ChangeImageNameInAvatar < ActiveRecord::Migration
  def change
  	change_column :avatars, :image_name, :string, :default => "avatar1.jpg"
  end
end
