Rails.application.routes.draw do
  devise_for :users
  root 'static#index'
  # To display user profile pages ONLY, devise handles the rest
  resources :users, only: [:show]
  resources :trails do
    # You would only create a hike through a trail show page
    # You would always need a trail to create a hike, anyway
    resources :hikes
  end

end
