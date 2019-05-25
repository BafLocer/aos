class CacheFlag < ApplicationRecord
  validates :flagtype, length: {maximum: 255}, presence: true
  validates :name, length: {maximum: 255}, presence: true
  validates :timemodified, presence: true
  validates :value, presence: true
  validates :expiry, presence: true
end
