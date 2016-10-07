Rails.application.routes.draw do
  root 'products#index'

  resources :products
  resources :clients


  get '*unmatched_route', to: 'application#not_found'
end
