class ChangeUrlInArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :article_source, :text
  end
end
