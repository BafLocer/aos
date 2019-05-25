class Config < ApplicationRecord
  validates :name, length: {maximum: 255}, presence: true
  validates :value, presence: true  
end
