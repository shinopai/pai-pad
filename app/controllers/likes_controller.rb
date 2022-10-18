class LikesController < ApplicationController
  before_action :authenticate_user!

  def like_recipe
    user = User.find(params[:id])
    recipe = Recipe.find(params[:recipe_id])

    user.like_recipes << recipe
    redirect_to request.referer, notice: 'マイフォルダに追加しました'
  end

  def unlike_recipe
    @res = Like.where(user_id: params[:id]).find_by(recipe_id: params[:recipe_id])
    @res.destroy

    redirect_to request.referer, notice: 'マイフォルダから削除しました'
  end
end
