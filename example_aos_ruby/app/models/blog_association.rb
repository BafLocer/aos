class BlogAssociation < ApplicationRecord
  has_many :posts, dependent: :destroy, inverse_of: :blog_association
  validates :contextid, presence: true
  validates :blogid, presence: true
end
