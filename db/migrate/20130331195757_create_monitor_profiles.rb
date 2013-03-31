class CreateMonitorProfiles < ActiveRecord::Migration
  def change
    create_table :monitor_profiles do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
