class AssignfeedbackEditpdfCmnt < ApplicationRecord
  validates :gradeid, presence: true
  validates :pageno, presence: true
  validates :colour, length: {maximum: 10}
  validates :draft, presence: true
end
