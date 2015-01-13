Rails.application.routes.draw do
  root 'categories#index'
  resources :users, :except => [:show, :index, :destroy]
  resources :sessions, :only => [:create]
  resources :categories, :only => [:show, :index]
  resources :articles, :except => [:index]
  get '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

end
