class Avatar < ActiveRecord::Base
  attr_accessible :color, :description, :name
  belongs_to :child, inverse_of: :avatar
  has_many :featuring, inverse_of: :avatar
end
