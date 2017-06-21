Rails.application.routes.draw do
  devise_for :users
  root 'static#index'
  resources :trails
  resources :users, only: [:show] do
    resources :hikes
  end

end
