class RecipesController < ApplicationController
  before_action :authenticate_user!, except: %i(index)
  before_action :init_recipe

  def new
  end

  def create
    user = User.find(params[:user_id])
    @recipe = user.recipes.new(recipe_params)

    if @recipe.save
      redirect_to root_path, notice: '新しいレシピを投稿しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @recipes = Recipe.page(params[:page]).per(20)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def search
    @recipes = @q.result.page(params[:page]).per(30)
  end


  # private
  def recipe_params
    params.require(:recipe).permit(
      :title,
      :image,
      :comment,
      :tips,
      :upbringing,
      :category_id,
      materials_attributes: [:name, :_destroy],
      flows_attributes: [:body, :_destroy]
    )
  end

  def init_recipe
    @recipe = Recipe.new
  end
end
