class HomeController < ApplicationController
  def index
    @recipes = Recipe.limit(12).order(id: :desc)
    @categories = Category.all
  end
end
