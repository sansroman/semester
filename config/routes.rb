Rails.application.routes.draw do
  resources :articles
  resources :healths
  resources :comments
  resources :tracks
  devise_for :users

  get '/index', to: 'home#index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
