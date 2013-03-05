class Avatar < ActiveRecord::Base
  attr_accessible :color, :features, :image, :name, :story
	has_many :features, inverse_of :avatar
	belongs_to :child, inverse_of :avatar
end
