class AssignmentSubmission < ApplicationRecord
  validates :assignment, presence: true
  validates :userid, presence: true
  validates :timecreated, presence: true
  validates :timemodified, presence: true
  validates :numfiles, presence: true
  validates :grade, presence: true
  validates :submissioncomment, presence: true
  validates :format, presence: true
  validates :teacher, presence: true
  validates :timemarked, presence: true
  validates :mailed, presence: true
end
