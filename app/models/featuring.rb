class Featuring < ActiveRecord::Base
  attr_accessible :level
  belongs_to :avatar, inverse_of: :featurings
  belongs_to :feature, inverse_of: :featurings
end
