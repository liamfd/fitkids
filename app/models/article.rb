class Article < ActiveRecord::Base
  attr_accessible :content, :name, :topic
end
