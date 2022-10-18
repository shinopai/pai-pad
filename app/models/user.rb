class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validation
  validates :name,
            presence: true,
            length: { in: 3..30 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relation
  has_many :recipes
  has_many :likes
  has_many :like_recipes, through: :likes, source: :recipe
  mount_uploader :profile_image, ProfileImageUploader
  mount_uploader :profile_bg_image, ProfileBackGroundImageUploader
end
