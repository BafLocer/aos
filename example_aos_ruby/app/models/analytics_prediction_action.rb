class AnalyticsPredictionAction < ApplicationRecord
  validates :predictionid, presence: true
  validates :userid, presence: true
  validates :actionname, length: {maximum: 255}, presence: true
  validates :timecreated, presence: true
end
