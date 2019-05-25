class AnalyticsPredictSample < ApplicationRecord
  validates :modelid, presence: true
  validates :analysableid, presence: true
  validates :timespliting, length: {maximum: 255}, presence: true
  validates :rangeindex, presence: true
  validates :sampleids, presence: true
  validates :timecreated, presence: true
  validates :timemodified, presence: true
end
