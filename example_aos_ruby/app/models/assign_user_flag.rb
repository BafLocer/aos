class AssignUserFlag < ApplicationRecord
  validates :userid, presence: true
  validates :assignment, presence: true
  validates :locked, presence: true
  validates :mailed, presence: true
  validates :extensionduedate, presence: true
  validates :workflowstate, length: {maximum: 20}
  validates :allocatedmarker, presence: true
end
