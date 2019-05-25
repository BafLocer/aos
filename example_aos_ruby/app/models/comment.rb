class Comment < ApplicationRecord
  validates :contextid, presence: true
  validates :component, length: {maximum: 255}
  validates :commentarea, length: {maximum: 255}, presence: true
  validates :itemid, presence: true
  validates :content, presence: true
  validates :format, presence: true
  validates :userid, presence: true
  validates :timecreated, presence: true
end
