class Tag < ActiveRecord::Base
  attr_accessible :tag_name
  #many to many with articles
  #many to many with tags
end
