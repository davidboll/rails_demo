class Comment < ApplicationRecord
  validates :body, presence: true
  belongs_to :article

   validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, presence: false
end
