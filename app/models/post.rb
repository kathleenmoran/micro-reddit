class Post < ApplicationRecord
  validates :title, :url, :user_id, presence: true
  validates :title, length: { in: 1..300 }

  belongs_to :user
  has_many :comments
end
