class RecipesController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipe = Recipe.new
  end
end
