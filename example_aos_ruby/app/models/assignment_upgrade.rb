class AssignmentUpgrade < ApplicationRecord
  validates :oldcmid, presence: true
  validates :oldinstance, presence: true
  validates :newcmid, presence: true
  validates :newinstance, presence: true
  validates :timecreated, presence: true
end
