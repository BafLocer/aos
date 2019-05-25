class AssignOverride < ApplicationRecord
  validates :assignid, presence: true
  validates :groupid, presence: true
  validates :userid, presence: true
  validates :sortorder, presence: true
  validates :allowsubmissionsfromdate, presence: true
  validates :duedate, presence: true
  validates :cutoffdate, presence: true
end
