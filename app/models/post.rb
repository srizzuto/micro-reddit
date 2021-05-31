class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 4 }
  validates :body, presence: true, length: { minimum: 20, maximum: 1000 }
end
