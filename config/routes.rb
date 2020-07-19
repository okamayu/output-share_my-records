Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'posts', to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: :show
  get 'records', to: 'records#index'
end
