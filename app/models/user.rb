class User < ApplicationRecord
  has_secure_password
  validates :password, :username, length: { minimum: 6 }
  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }

  has_many :articles, dependent: :destroy
end
