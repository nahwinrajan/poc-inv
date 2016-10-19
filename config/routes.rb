Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'products#index', as: 'products'
    end

    unauthenticated do
      root 'devise/sessions#new', as: 'signin'
    end
  end

  resources :products
  resources :clients
  resources :line_items
  resources :carts


  get '*unmatched_route', to: 'application#not_found'
end
