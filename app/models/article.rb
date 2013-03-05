class Article < ActiveRecord::Base
  attr_accessible :content, :tag, :title
  #many to many with monitors
  #many to many with tags	
end
