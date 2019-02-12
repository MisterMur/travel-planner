Rails.application.routes.draw do
  resources :destination_activity_types
  resources :trips
  resources :activities
  resources :activity_types
  resources :destinations
  resources :users

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete 'sessions', to: "sessions#destroy"

  # get "/", to: "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
