class Post < ApplicationRecord
  has_many :authored_posts
  has_many :authors, through: :authored_posts
  has_many :post_comments
  
  acts_as_taggable_on :tags, :categories

  validates :slug, :excerpt, :read_time, presence: true
  validates :title, presence: true, length: { minimum: 10 }
  validates :content, presence: true, length: { minimum: 100 }
end
