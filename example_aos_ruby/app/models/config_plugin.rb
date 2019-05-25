class ConfigPlugin < ApplicationRecord
  validates :plugin, length: {maximum: 100}, presence: true
  validates :name, length: {maximum: 100}, presence: true
  validates :value, presence: true
end
