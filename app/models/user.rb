class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true, length: { minimum: 4 }
  validates :mail, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
