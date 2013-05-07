class Article < ActiveRecord::Base
  attr_accessible :content, :name, :topic, :watcher, :article_source

 belongs_to :watcher, inverse_of: :articles
end
