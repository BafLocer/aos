class AssignfeedbackFile < ApplicationRecord
  validates :assignment, presence: true
  validates :grade, presence: true
  validates :numfiles, presence: true
end
