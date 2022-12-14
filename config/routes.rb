Rails.application.routes.draw do
  resources :games
  resources :phases
  resources :boards
  resources :teams
  
  # Route for scoreboard page
  get 'scoreboard', to: 'scoreboard#show'

  # Routes for teams API
  namespace :api do
    resources :teams
  end

  # Route for custom method generate_token
  post 'api/generate_token', to: 'api/application#generate_token'

  # Route for custom method validate_token
  post 'api/validate_token', to: 'api/application#validate_token'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_scope :user do  
  #   root 'devise/sessions#new'
  # end

  # Defines the root path route ("/")
  root "home#index"
end
