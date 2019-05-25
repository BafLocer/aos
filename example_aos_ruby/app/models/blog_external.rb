class BlogExternal < ApplicationRecord
  validates :userid, presence: true
  validates :name, length: {maximum: 255}, presence: true
  validates :url, presence: true
  validates :filtertags, length: {maximum: 255}, presence: true
  validates :failedlastsync, presence: true
  validates :timefetched, presence: true
end
