class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def show_profile
    @latest_recipes = @user.recipes.order(id: :desc).limit(5)

    render :profile
  end

  def show_recipes
    @recipes = @user.recipes

    render :recipes
  end

  # private
  def find_user
    @user = User.find(params[:id])
  end
end
