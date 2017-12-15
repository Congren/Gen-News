Rails.application.routes.draw do
  get 'home', to: 'home#index', as: :home

  resources :locations
  resources :articles
  devise_for :users
  resources :users
  # Semi-static page routes

  
  # Set the root url
  root :to => 'home#index'  
end
