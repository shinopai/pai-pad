Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # auth user
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  # Defines the root path route ("/")
  root "home#index"

  # new recipe form
  get 'recipes/new', to: 'recipes#new', as: :new_recipe

  # post new recipe
  post 'recipes/create/:user_id', to: 'recipes#create', as: :create_recipe

  # recent recipe list
  get 'recipes/recent', to: 'recipes#index', as: :recipes
end
