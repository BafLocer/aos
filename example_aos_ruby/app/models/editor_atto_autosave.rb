class EditorAttoAutosave < ApplicationRecord
  validates :elementid, length: {maximum: 255}, presence: true
  validates :contextid, presence: true
  validates :pagehash, length: {maximum: 64}, presence: true
  validates :userid, presence: true
  validates :drafttext, presence: true
  validates :draftid, presence: true
  validates :pageinstance, length: {maximum: 64}, presence: true
  validates :timemodified, presence: true
end
