class Flow < ApplicationRecord
  # relation
  belongs_to :recipe

  validates :body,
            presence: true
end
