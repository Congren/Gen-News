Rails.application.routes.draw do
  resources :locations
  resources :interests
  resources :saved_articles
  resources :ratings
  resources :articles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
