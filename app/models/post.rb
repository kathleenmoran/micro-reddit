class Post < ApplicationRecord
  validates :title, :url, presence: true
  validates :title, length: { in: 1..300 }

  belongs_to :user
end
