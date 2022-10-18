module CategoriesHelper
  def check_exists_likes(recipe_id)
    user = current_user
    res = user.like_recipes.where(id: recipe_id)
    res.any?
  end
end
