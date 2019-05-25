class CacheFilter < ApplicationRecord
  validates :filter, length: {maximum: 32}, presence: true
  validates :version, presence: true
  validates :md5key, length: {maximum: 32}, presence: true
  validates :rawtext, presence: true
  validates :timemodified, presence: true
end
