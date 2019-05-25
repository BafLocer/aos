class AnalyticsUsedAnalysable < ApplicationRecord
  validates :modelid, presence: true
  validates :action, length: {maximum: 50}, presence: true
  validates :analysableid, presence: true
  validates :timeanalysed, presence: true
end
