class AssignUserMapping < ApplicationRecord
  validates :assignment, presence: true
  validates :userid, presence: true
end
