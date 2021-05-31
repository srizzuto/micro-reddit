class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  validates :mail, presence:true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
