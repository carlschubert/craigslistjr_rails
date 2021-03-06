Rails.application.routes.draw do
  root 'categories#index'
  resources :users, :except => [:show, :index, :destroy]
  resources :sessions, :only => [:create]
  resources :categories, :only => [:show, :index] do
    resources :articles, :except => [:index]
  end
  resources :articles, :only => [:update, :edit]
  get '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

end
