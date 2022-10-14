class Material < ApplicationRecord
  # relation
  belongs_to :recipe

  # validation
  validates :name,
            presence: true
end
