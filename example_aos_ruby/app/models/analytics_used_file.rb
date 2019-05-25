class AnalyticsUsedFile < ApplicationRecord
  validates :modelid, presence: true
  validates :fileid, presence: true
  validates :action, length: {maximum: 50}, presence: true
  validates :time, presence: true
end
