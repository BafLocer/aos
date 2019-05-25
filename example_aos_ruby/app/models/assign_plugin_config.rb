class AssignPluginConfig < ApplicationRecord
  validates :assignment, presence: true
  validates :plugin, length: {maximum: 28}, presence: true
  validates :subtype, length: {maximum: 28}, presence: true
  validates :name, length: {maximum: 28}, presence: true
end
