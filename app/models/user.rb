class User < ApplicationRecord
  has_many :posts
  has_many :favorites, dependent: :destroy
  before_validation { email.downcase! }
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 100 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  mount_uploader :image, ImageUploader
end
