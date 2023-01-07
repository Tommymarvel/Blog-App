class Post < ApplicationRecord
  has_many :likes, foreign_key: :post_id
  has_many :comments, foreign_key: :post_id

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  after_save :update_post_counter

  def most_recent_comments
    comments.order(created_at: :desc).includes(:author).limit(5)
  end

  def update_post_counter_when_post_deleted
    author.decrement!(:posts_counter)
  end

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end
end
