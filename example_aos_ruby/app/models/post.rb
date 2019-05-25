class Post < ApplicationRecord
  belongs_to :blog_association
  validates :module, length: {maximum: 20}, presence: true
  validates :userid, presence: true
  validates :courseid, presence: true
  validates :groupid, presence: true
  validates :moduleid, presence: true
  validates :coursemoduleid, presence: true
  validates :subject, length: {maximum: 128}, presence: true
  validates :uniquehash, length: {maximum: 255}, presence: true
  validates :rating, presence: true
  validates :format, presence: true
  validates :summaryformat, presence: true
  validates :attachment, length: {maximum: 100}, presence: true
  validates :publishstate, length: {maximum: 20}, presence: true
  validates :lastmodified, presence: true
  validates :created, presence: true
  validates :usermodified, presence: true
  validates :blog_association, presence: true
end
