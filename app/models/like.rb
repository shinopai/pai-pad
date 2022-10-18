class Like < ApplicationRecord
  # relation
  belongs_to :user
  belongs_to :recipe

  # validation
  # validates :user_id, uniqueness: { scope: :recipe_id }
end
