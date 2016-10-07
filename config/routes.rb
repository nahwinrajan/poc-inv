Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'products#index'

  resources :products
  resources :clients


  get "*any", via: :all, to: 'application#not_found'
end
