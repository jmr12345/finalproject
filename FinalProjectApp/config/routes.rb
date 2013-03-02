FinalProjectApp::Application.routes.draw do

  resources :posts


  root to: 'sessions#new'

  resources :users

  get '/sign_in' => 'sessions#new', :as => :login
  get '/sign_out' => 'sessions#destroy', :as => :logout

  post '/sessions' => 'sessions#create'

  end
