class Recipe < ApplicationRecord
  # relation
  belongs_to :category
  belongs_to :user
  has_many :materials, dependent: :destroy
  has_many :flows, dependent: :destroy
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
  # validates :materials,
  #           presence: true
  # validates :flows,
  #           presence: true
end
