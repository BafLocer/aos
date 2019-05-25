class AssignfeedbackEditpdfAnnot < ApplicationRecord
  validates :gradeid, presence: true
  validates :pageno, presence: true
  validates :type, length: {maximum: 10}
  validates :colour, length: {maximum: 10}
  validates :draft, presence: true
end
