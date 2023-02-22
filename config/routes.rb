Rails.application.routes.draw do
  get 'categories/create'
  get 'admin/index'
  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :countries, only: :create
  resources :categories, only: :create
  resources :manufacturers, only: :create
  # Defines the root path route ("/")
  # root "articles#index"
end
