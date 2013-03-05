class Feature < ActiveRecord::Base
  attr_accessible :color, :feature_type, :image
	belongs_to :avatar , inverse_of :feature
end
