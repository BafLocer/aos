class AnalyticsTrainSample < ApplicationRecord
  validates :modelid, presence: true
  validates :analysableid, presence: true
  validates :timespliting, length: {maximum: 255}, presence: true
  validates :fileid, presence: true
  validates :sampleids, presence: true
  validates :timecreated, presence: true
end
