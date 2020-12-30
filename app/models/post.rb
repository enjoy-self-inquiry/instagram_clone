class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorites_users, through: :favorites, source: :user
  validates :content, presence: true, length: { maximum: 50}
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
