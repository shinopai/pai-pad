class Category < ApplicationRecord
  # relation
  has_many :recipes
end
