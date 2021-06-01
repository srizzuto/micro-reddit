# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment, presence: true, length: { minimum: 10, maximum: 150 }
end
