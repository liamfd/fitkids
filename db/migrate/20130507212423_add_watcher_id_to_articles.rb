class AddWatcherIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :watcher_id, :integer
  end
end
