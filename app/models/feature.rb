class Feature < ActiveRecord::Base
  attr_accessible :appearance, :feature_type, :name
  has_many: featurings, inverse_of: :feature
end
