Rails.application.routes.draw do
  # Semi-static page routes
  get 'home', to: 'home#index', as: :home

  resources :users
  resources :saved_articles
  resources :ratings
  resources :locations
  resources :articles

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
