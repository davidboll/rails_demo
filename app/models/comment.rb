class Comment < ApplicationRecord
  validates :body, presence: true
  belongs_to :article

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, :unless => :body?, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}

end
