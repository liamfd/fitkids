class AddWatcherReferenceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :watcher, :integer
  end
end
