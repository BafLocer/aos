class BlogExternal < ApplicationRecord
  validates :name, length: {maximum: 255}, presence: true
  validates :filtertags, length: {maximum: 255}, presense: true
end
