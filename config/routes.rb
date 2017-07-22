Rails.application.routes.draw do
  root 'static#index'
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks",
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  # To display user profile pages ONLY, devise handles the rest
  get '/users/most_active' => 'users#most_active'
  get '/users/rock_climber' => 'users#rock_climber'
  get '/users/trail_runner' => 'users#trail_runner'
  resources :users, only: [:show, :index]
  resources :trails do
    resources :hikes
    resources :users, only: [:show]
  end



end
