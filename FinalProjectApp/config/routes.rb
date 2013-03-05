FinalProjectApp::Application.routes.draw do

  resources :subscriptions


  resources :comments


  root to: 'journal#index'

  resources :posts
  resources :users

  # sessions
  get '/sign_in' => 'sessions#new', :as => :login
  get '/sign_out' => 'sessions#destroy', :as => :logout
  post '/sessions' => 'sessions#create'

  get "/:vieweduser" => 'posts#view', :as => :view

  end
