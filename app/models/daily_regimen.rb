class DailyRegimen < ActiveRecord::Base
  attr_accessible :focus
  belongs_to :child, inverse_of: :daily_regimens
  has_many :exercise_reps, inverse_of: :daily_regimen
end
