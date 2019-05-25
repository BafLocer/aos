class AssignfeedbackEditpdfQuick < ApplicationRecord
  validates :userid, presence: true
  validates :rawtext, presence: true
  validates :width, presence: true
  validates :colour, length: {maximum: 10}
end
