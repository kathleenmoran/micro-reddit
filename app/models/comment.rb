class Comment < ApplicationRecord
  validates :message, :user_id, :post_id, presence: true
  validates :message, length: { in: 1..10_000 }

  belongs_to :user
  belongs_to :post
end
