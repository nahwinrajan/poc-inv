Rails.application.routes.draw do
  root 'products#index'

  resources :products
  resources :clients
  resources :line_items
  resources :carts
  

  get '*unmatched_route', to: 'application#not_found'
end
