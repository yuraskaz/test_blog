class User < ApplicationRecord
  has_many :posts
  validates :nickname, presence: true
end
