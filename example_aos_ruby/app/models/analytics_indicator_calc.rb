class AnalyticsIndicatorCalc < ApplicationRecord
  validates :starttime, presence: true
  validates :endtime, presence: true
  validates :contextid, presence: true
  validates :sampleorign, length: {maximum: 255}, presence: true
  validates :sampleid, presence: true
  validates :indicator, length: {maximum: 255}, presence: true
  validates :value, length: {maximum: 10}, presence: true
  validates :timecreated, presence: true
end
