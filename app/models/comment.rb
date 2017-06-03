class Comment < ApplicationRecord
  validates :text, presence: true, length: { minimum: 5 }

  belongs_to :user
  belongs_to :article
end
