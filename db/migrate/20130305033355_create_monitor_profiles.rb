class CreateMonitorProfiles < ActiveRecord::Migration
  def change
    create_table :monitor_profiles do |t|
      t.string :name, :default => false
      t.binary :picture
      t.reference :tag
      t.reference :article

      t.timestamps
    end
  end
end
