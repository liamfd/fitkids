class Regiman < ActiveRecord::Base
  attr_accessible :exercise
  #many to many with exercises
end
