class ConfigLog < ApplicationRecord
  validates :userid, presence: true
  validates :timemodified, presence: true
  validates :plugin, length: {maximum: 100}
  validates :name, length: {maximum: 100}, presence: true
end
