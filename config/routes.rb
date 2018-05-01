Rails.application.routes.draw do
  devise_for :users
  root :to => 'products#index'

  resource :cart, only: [:show]

  resources :news, only: [:index]

  resources :products

  resources :charges

  resources :orders do
    resources :order_items
  end

  # resources :accounts


end
