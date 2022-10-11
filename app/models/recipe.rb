class Recipe < ApplicationRecord
  # relation
  belongs_to :category
  belongs_to :user

  # validattion
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
