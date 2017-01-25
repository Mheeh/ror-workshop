class Payment < ActiveRecord::Base
  belongs_to :student
  validates :student_id, :value,:date, presence: true
end
