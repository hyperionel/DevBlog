class Author < ApplicationRecord
  has_many :authored_posts
  has_many :posts, through: :authored_posts

  validates :name, presence: true
end
