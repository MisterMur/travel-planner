Rails.application.routes.draw do
  resources :destination_activity_types
  resources :travel_types
  resources :activities
  resources :activity_types
  resources :destinations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
