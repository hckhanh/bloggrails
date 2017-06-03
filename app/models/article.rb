class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { minimum: 10 }
  validates :image, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy

  mount_uploader :image, ArticleImageUploader
end
