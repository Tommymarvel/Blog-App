class User < ApplicationRecord
  has_many :comments, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id

  def most_recent_posts
    Post.order(created_at: :desc).includes(:author).limit(3)
  end
end