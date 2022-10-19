Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # auth user
  devise_for :users, skip: 'sessions', controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  devise_scope :user do
    get	'/users/sign_in', to: 'users/sessions#new', as: :new_user_session
    post	'/users/sign_in', to: 'users/sessions#create', as: :user_session
    get	'/users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  # Defines the root path route ("/")
  root "home#index"

  # new recipe form
  get 'recipes/new', to: 'recipes#new', as: :new_recipe

  # post new recipe
  post 'recipes/create/:user_id', to: 'recipes#create', as: :create_recipe

  # recent recipe list
  get 'recipes/recent', to: 'recipes#index', as: :recipes

  # recipe detail
  get 'recipe/:id', to: 'recipes#show', as: :show_recipe

  # show recipe list every category
  get 'category/:id', to: 'categories#show', as: :show_category

  # search recipe
  get 'search', to: 'recipes#search', as: :search_recipes

  # show profile
  get 'users/profile/:id', to: 'users#show_profile', as: :user_profile

  # show user recipes
  get 'users/recipes/:id', to: 'users#show_recipes', as: :user_recipes

  # like recipe
  post 'users/:id/recipes/:recipe_id/like', to: 'likes#like_recipe', as: :like_recipe

  # unlike recipe
  delete 'users/:id/recipes/:recipe_id/unlike', to: 'likes#unlike_recipe', as: :unlike_recipe

  # user's liked recipes
  get 'users/likes/:id', to: 'users#show_likes', as: :user_likes
end
