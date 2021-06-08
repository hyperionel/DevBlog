class Post < ApplicationRecord
  has_many :post_comments
  
  acts_as_taggable_on :tags, :categories
end
