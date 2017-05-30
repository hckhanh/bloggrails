class Session < ApplicationRecord
  validates :session_token, presence: true

  belongs_to :user
end
