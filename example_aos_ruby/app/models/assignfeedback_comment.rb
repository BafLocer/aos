class AssignfeedbackComment < ApplicationRecord
  validates :assignment, presence: true
  validates :grade, presence: true
  validates :commentformat, presence: true
end
