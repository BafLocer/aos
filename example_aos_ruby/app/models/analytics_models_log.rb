class AnalyticsModelsLog < ApplicationRecord
  validates :modelid, presence: true
  validates :version, presence: true
  validates :target, length: {maximum: 255}, presence: true
  validates :indicators, presence: true
  validates :timespliting, length: {maximum: 255}, presence: true
  validates :score, length: {maximum: 10}, presence: true
  validates :info, presence: true
  validates :dir, presence: true
  validates :timecreated, presence: true
  validates :usermodified, presence: true
end
