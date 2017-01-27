Rails.application.routes.draw do

  # root to: 'users#new'
  # these routes are for showing users a login form, logging them in, and logging them out.
   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  post '/users/id/edit' => 'users#edit'
  
  resources :users
  root to: 'landing#index'
end
