Rails.application.routes.draw do
  resources :users
  resources :saved_articles
  resources :ratings
  resources :locations
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
