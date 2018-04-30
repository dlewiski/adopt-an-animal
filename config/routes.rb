Rails.application.routes.draw do
  devise_for :users
  root :to => 'products#index'

  resource :cart, only: [:show]

  resources :products

  resources :order_items do
    resources :orders
  end

  # resources :accounts


end
