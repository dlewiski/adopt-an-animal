Rails.application.routes.draw do
  devise_for :users
  root :to => 'layouts#index'

  resources :products do
    resources :order_items
  end

  resources :orders do
    resources :order_items
  end

  resources :accounts do
    resources :orders
  end
end
