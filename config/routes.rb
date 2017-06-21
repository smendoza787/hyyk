Rails.application.routes.draw do
  devise_for :users
  resources :trails
  resources :hikes
  resources :users, only: [:show]
  root 'static#index'

end
