class AssignsubmissionFile < ApplicationRecord
  validates :assignment, presence: true
  validates :submission, presence: true
  validates :numfiles, presence: true
end
