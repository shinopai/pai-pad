class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @recipes = @category.recipes.page(params[:page]).per(30)
  end
end
