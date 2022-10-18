class Recipe < ApplicationRecord
  # relation
  belongs_to :category
  belongs_to :user
  has_many :materials, dependent: :destroy
  has_many :flows, dependent: :destroy
  has_many :likes
  has_many :like_users, through: :likes, source: :user
  accepts_nested_attributes_for :materials, allow_destroy: true
  accepts_nested_attributes_for :flows, allow_destroy: true
  mount_uploader :image, ImageUploader

  # validation
  validates :title,
            presence: true,
            length: { in: 3..30 }
  validates :comment,
            length: { maximum: 300 }
  validates :tips,
            length: { maximum: 300 }
  validates :upbringing,
            length: { maximum: 300 }
end
