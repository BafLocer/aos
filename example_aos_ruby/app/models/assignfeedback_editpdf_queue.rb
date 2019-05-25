class AssignfeedbackEditpdfQueue < ApplicationRecord
  validates :submissionid, presence: true
  validates :submissionattempt, presence: true
end
