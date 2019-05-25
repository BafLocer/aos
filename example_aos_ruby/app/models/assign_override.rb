class AssignOverride < ApplicationRecord
  validates :assignid, presence: true
  validates :allowsubmissionsfromdate, presence: true
end
