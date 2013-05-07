class AddArticleSourceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :article_source, :String
  end
end
