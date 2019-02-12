Rails.application.routes.draw do
  resources :destination_activity_types
  resources :trips
  resources :activities
  resources :activity_types
  resources :destinations
  resources :users

  get "/login", to: "sessions#new"

  # get "/", to: "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
