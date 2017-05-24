class User < ApplicationRecord
  has_secure_password
  validates :password, :username, length: { minimum: 6 }
  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
end
