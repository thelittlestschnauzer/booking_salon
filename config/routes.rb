Rails.application.routes.draw do
  resources :clients
  resources :stylists
  resources :bookings
  root to: 'services#index'
  
  resources :services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
