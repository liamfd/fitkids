class Avatar < ActiveRecord::Base
  attr_accessible :color, :description, :name
  belongs_to :child, inverse_of: :avatar
  has_many :featurings, inverse_of: :avatar
end
